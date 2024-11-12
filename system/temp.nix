{ ... }:

{
	services.fwupd.enable = true;
	services.dbus.packages = [ pkgs.fwupd ];
}
