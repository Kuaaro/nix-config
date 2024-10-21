{ pkgs, ...}:

{
    services.xserver = {
        enable = true;
        displayManager.gdm.enable = true;
        desktopManager.gnome = {
        	enable = true;
        	settingsDaemon.plugins.applets.lockStatus.enable = true;
        };
    };
}
