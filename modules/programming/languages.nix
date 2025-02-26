{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programming.languages;

in {
  options.modules.programming.languages = {
    python = mkEnableOption "python";
    csharp = mkEnableOption "csharp";
    latex = mkEnableOption "latex";
  };
  config.home-manager.users."${config.commons.main_username}".home.packages = with pkgs; [
    (mkIf cfg.python 
      (python3.withPackages(ps: with ps; [ 
			numpy
			matplotlib
			#pyvista
			#imageio
			pandas
		  ]))
    )
    (mkIf cfg.csharp [
      mono
		  dotnet-sdk
    ])
    (mkIf cfg.latex texliveFull)
  ];
}
