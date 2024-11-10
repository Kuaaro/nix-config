{ lib, config, pkgs, ... }:

let
	cfg = config.main-user;
in
{
	config.users.users."kuaaro" = {
		uid = 1000;
    extraGroups = ["networkmanager"];
		isNormalUser = true;
		initialPassword = "12345";
		description = "main user";
		shell = pkgs.fish;
	};
}
