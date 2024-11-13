{ pkgs, inputs, ... }:
let
	extensions = inputs.nix-vscode-extensions.extensions."x86_64-linux";
in
{
	programs.vscode = {
		enable = true;
		package = pkgs.vscodium;
		
		extensions = with extensions.open-vsx; [#pkgs.vscode-extensions; [
			#rust-lang.rust-analyzer
			muhammad-sammy.csharp
			ms-dotnettools.vscode-dotnet-runtime
		];
		
		

		
		#enableExtensionUpdateCheck = false;
		#enableUpdateCheck = false;
		#mutableExtensionsDir = false;
	};
	home.file.".vscode-oss/extensions/muhammad-sammy.csharp/omnisharp/phd" = {
  		enable = true;
  		recursive = true;
  		text = "";
  	#};
  	#".vscode-oss/extensions/muhammad-sammy.csharp/razoromnisharp/" = {
  	#	enable = true;
  	#	recursive = true;
  	#};
	};
}
