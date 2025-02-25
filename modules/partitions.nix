{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.partitions; in {
  options.modules.partitions = {
    root-fs = mkOption {
      type = types.enum [ "ext4" "btrfs" ];
      default = "btrfs";
      description = "Filesystem to be used for root (/) partition";
    };
    home-fs = mkOption {
      type = types.enum [ "ext4" "btrfs" "" ];
      default = "";
      description = "Filesystem to be used for home (/home) partition";
    };
    swap = mkEnableOption "swap partition";
    luks = mkEnableOption "luks partition";
  };

  config = {
    swapDevices = mkIf cfg.swap [
      {device = "/dev/disk/by-label/SWAP"; }
    ];

    boot.initrd.luks.devices."luks" = mkIf cfg.luks {
      device = "/dev/disk/by-label/LUKS";
      preLVM = true;
      allowDiscards = true;
    };

    fileSystems = {
      "/" = {
        device = "/dev/disk/by-label/ROOT";
        fsType = "${cfg.root-fs}";
      };
      "/boot" = {
        device = "/dev/disk/by-label/BOOT";
        fsType = "vfat";
        options = [ "fmask=0022" "dmask=0022" ];
      };
      "/home" = mkIf (cfg.home-fs != "") {
        device = "/dev/disk/by-label/HOME";
        fsType = "${cfg.home-fs}";
      };
    };
  };
}
