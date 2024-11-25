{ pkgs, ... }:

{
	home.packages = with pkgs; [
		mono
		texliveFull
		python3
	];
}
