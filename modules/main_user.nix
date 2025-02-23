{ pkgs, lib, config, ...}:

with lib;
{
  config.users.users."${config.commons.main_username}" = {
		uid = 1000;
    extraGroups = ["networkmanager"];# "libvirtd"
		isNormalUser = true;
		initialPassword = "12345";
		description = "kuaaro";
		#shell = pkgs.fish;
	};
}

