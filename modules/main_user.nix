{ pkgs, lib, config, ...}:

with lib;
let
  addToWheel = config.modules.security.escal_tool == "sudo";
  main_username = config.commons.main_username;
in
{
  config.users.users."${main_username}" = {
		uid = 1000;
    extraGroups = optionals addToWheel [ "wheel" ] ++ [ "networkmanager" ];
		isNormalUser = true;
		initialPassword = "12345";
		description = "${main_username}";
	};
}

