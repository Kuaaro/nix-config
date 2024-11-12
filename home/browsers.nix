{ pkgs, ... }:

{
	home.packages = with pkgs; [
		brave
	];
	
	home.sessionVariables = {
		BROWSER = "${pkgs.brave}/bin/brave";
	};
}
