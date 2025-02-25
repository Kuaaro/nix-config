{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programming;

in {
  options.modules.programming = { vscodium = mkEnableOption "programming vscodium"; };
  config.home-manager.users."${config.commons.main_username}" = {
    programs = mkIf cfg.vscodium {
      vscode = {
		    enable = true;
		    package = pkgs.vscodium;
		    
		    #extensions = with vsc_extensions.open-vsx; [#pkgs.vscode-extensions; [
			    #rust-lang.rust-analyzer
		    #	muhammad-sammy.csharp
		    #	ms-dotnettools.vscode-dotnet-runtime
			  #  james-yu.latex-workshop
			  #  ms-python.python
			  #  eamodio.gitlens
		    #];
	    };
	    
	    home.packages = with pkgs; [
		    jetbrains.rider
	    ];
	  };
  };
}
