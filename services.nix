{ config, pkgs,... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager.gdm.enable = true;
      desktopManager.gnome.enable = true;
    };
    fwupd.enable = true;
    power-profiles-daemon.enable = true;
  };
}
