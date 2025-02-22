{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules.gnome; in {
  options.modules.gnome = { enable = mkEnableOption "gnome"; };
  config = mkIf cfg.enable {
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
  
    services.xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
    programs.localsend = {
      enable = true;
      openFirewall = true;
    };
  };
}
