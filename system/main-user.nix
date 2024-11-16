{ lib, config, pkgs, ... }:

let
	cfg = config.main-user;
in
{
	config.users.users."kuaaro" = {
		uid = 1000;
    extraGroups = ["networkmanager", "libvirtd"];
		isNormalUser = true;
		initialPassword = "12345";
		description = "kuaaro";
		shell = pkgs.fish;
	};
}
