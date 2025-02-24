{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.bootloader;

in {
  options.modules.bootloader = {
    bootloader = mkOption {
      type = types.enum ["systemd-boot" "grub"];
      default = "systemd-boot";
      description = "Which bootloader to use";
    };
  };
  config.boot.loader = {
    timeout = 2;
    systemd-boot = mkIf (cfg.bootloader == "systemd-boot") {
      enable = true;
    };
    grub = mkIf (cfg.bootloader == "grub") {
      enable = true;
    };
  };
}
