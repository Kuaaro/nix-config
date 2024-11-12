{ pkgs, ... }:

{
	home.packages = with pkgs; [
		localsend
	];
	
	#home.file."" = {
	#	
	#};
	#programs = {
	#	localsend = {
	#		enable = true;
	#		openFirewall = true;
	#	};
	#};
	
	networking.firewall = {
		enable = true;
		allowedTCPPorts = [
			53317
		];
		allowedUDPPorts = [
			53317
		];
	};
}
