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
    plymouth_theme = mkOption {
      type = types.enum [ "" "loader_alt" ];
      default = "";
      description = "Wheather to enable plymouth and which theme to use";
    };
  };
  
  config.boot = {
    loader = {
      systemd-boot = mkIf (cfg.bootloader == "systemd-boot") {
        enable = true;
      };
      grub = mkIf (cfg.bootloader == "grub") {
        enable = true;
      };
      
      efi.canTouchEfiVariables = true;
      timeout = 2;
    };
    initrd = {
      enable = true;
      systemd.enable = true;
      verbose = false;
    };
    consoleLogLevel = 3;
    plymouth = mkIf (cfg.plymouth_theme != "") {
      enable = true;
      themePackages = [ pkgs.adi1090x-plymouth-themes ];
      theme = "${cfg.plymouth_theme}";
    };
    #kernelModules = [ "kvm-amd" ];
  };
}
