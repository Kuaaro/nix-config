{ pkgs, ... }:

{
	home.packages = with pkgs; [
		mono
		textliveFull
	];
}
