{ pkgs, ... }:

{
	programs = {
		fastfetch.enable = true;
	};
	
	home.packages = with pkgs; [
		qemu
	];
}
