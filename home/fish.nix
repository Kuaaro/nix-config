{ pkgs, ... }:

{
	programs.fish = {
		enable = true;
	};
	
	shell = pkgs.fish;
}
