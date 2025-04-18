{ pkgs, lib, config, ... }:

with lib;
let 
  cfg = config.modules;
  sec = cfg.security;
in {
  options.modules = { gnome = mkEnableOption "gnome"; };
  config = mkIf cfg.gnome {
    services.xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
    #security.pam.services.login = {
    #  fprintAuth = lib.mkForce true;#mkIf sec.fingerprint true;
    #  nodelay = true;
    #};
  };
}
