{ pkgs, ... }:

{
	programs.vscode = {
		enable = true;
		package = pkgs.vscodium;
		
		extensions = with pkgs.vscode-extensions; [
			dracula-theme.theme-dracula
		];
		
		enableExtensionUpdateCheck = false;
		enableUpdateCheck = false;
		mutableExtensionsDir = false;
	};
}
