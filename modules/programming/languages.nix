{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programming.languages;

in {
  options.modules.programming.languages = {
    c = mkEnableOption "c";
    csharp = mkEnableOption "csharp";
    go = mkEnableOption "go";
    java = mkEnableOption "java";
    python = mkEnableOption "python";
    rust = mkEnableOption "rust";
    zig = mkEnableOption "zig";
    
    latex = mkEnableOption "latex";
  };
  config.home-manager.users."${config.commons.main_username}".home.packages = with pkgs; mkMerge [
    (mkIf cfg.c [gcc])
    (mkIf cfg.csharp [mono dotnet-sdk])
    (mkIf cfg.go [go])
    (mkIf cfg.java [jdk])
    (mkIf cfg.python 
      [(python3.withPackages(ps: with ps; [ 
			numpy
			matplotlib
			#pyvista
			#imageio
			pandas
		  ]))]
    )
    (mkIf cfg.rust [rustc cargo])
    (mkIf cfg.zig [zig])
    (mkIf cfg.latex [texliveFull])
  ];
}
