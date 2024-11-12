{ pkgs, ... }:

{
	programs.vscode = {
		enable = true;
		package = pkgs.vscodium;
		
		enableExtensionUpdateCheck = false;
		enableUpdateCheck = false;
		mutableExtensionDir = false;
	};
}
