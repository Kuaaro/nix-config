{ config, pkgs,... }:

{
  boot = {
    kernelPackages = pkgs.linuxPackages_zen;
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    };
    initrd = {
      systemd.enable = true;
      luks.devices."luks_lvm" = {
        device = "/dev/disk/by-label/LUKS";
        preLVM = true;
        allowDiscards = true;
      };
      verbose = false;
    };
    plymouth = {
      enable = true;
      theme = "bgrt";
    };
    kernelParams = ["splash" "quiet"];
  };
}
