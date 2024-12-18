{ pkgs, ... }:

{
	home.packages = with pkgs; [
	#	virt-manager
		unityhub
		libreoffice
		kicad
		alacritty
	];
}
