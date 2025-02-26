{ pkgs, lib, config, ... }:

with lib;
let cfg = config.modules; in {
  options.modules = { gnome = mkEnableOption "gnome"; };
  config = mkIf cfg.gnome {
    services.xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
  };
}
