{ lib, config, pkgs, ... }:

let
	cfg = config.main-user;
in
{

	options.main-user.userName = lib.mkOption {
		default = "mainuser";
		description = ''
			username
		'';
	};

	config.users.users.${cfg.userName} = {
		uid = 1000;
    extraGroups = ["networkmanager"];
		isNormalUser = true;
		initialPassword = "12345";
		description = "main user";
		shell = pkgs.fish;
	};
}
