{ pkgs, lib, config, ...}:

with lib;
let 
  cfg = config.modules.programming;
  lang =  config.modules.programming.languages;
in {
  options.modules.programming = {
    vscodium = mkEnableOption "vscodium";
    rider = mkEnableOption "rider";
  };
  
  config.home-manager.users."${config.commons.main_username}" = {
    programs = mkIf cfg.vscodium {
      vscode = {
		    enable = true;
		    package = pkgs.vscodium;
		    
		    extensions = with pkgs.vscode-extensions; [#vsc_extensions.open-vsx; [#pkgs.vscode-extensions; [ #programs.vscode.profiles.default.extensions
			    (mkIf lang.c ms-vscode.cpptools)
			    #(mkIf lang.csharp)
			    (mkIf lang.go golang.go)
			    (mkIf lang.java redhat.java)
			    (mkIf lang.python ms-python.python)
			    (mkIf lang.rust rust-lang.rust-analyzer)
		      #(mkIf lang.zig) TODO
		      
		      (mkIf lang.latex james-yu.latex-workshop)
		    ];
	    };
	  };
	  home.packages = [
		    ( mkIf cfg.rider pkgs.jetbrains.rider )
	  ];
  };
}
