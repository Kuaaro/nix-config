{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programs;

in {
  options.modules.programs = {
    brave = mkEnableOption "brave";
    fastfetch = mkEnableOption "fastfetch";
    speedtest-go = mkEnableOption "speedtest-go";
    raider = mkEnableOption "raider";
    unityhub = mkEnableOption "unityhub";
		libreoffice = mkEnableOption "libreoffice";
		kicad = mkEnableOption "kicad";
		alacritty = mkEnableOption "alacritty";
		anytype = mkEnableOption "anytype";
		godot  = mkEnableOption "godot";
  };
  
  config.home-manager.users."${config.commons.main_username}".home = {
    packages = with pkgs; [
      (mkIf cfg.brave brave)
      (mkIf cfg.fastfetch fastfetch)
      (mkIf cfg.speedtest-go speedtest-cli)
      (mkIf cfg.raider raider)
      (mkIf cfg.unityhub unityhub)
      (mkIf cfg.libreoffice libreoffice)
      (mkIf cfg.kicad kicad)
      (mkIf cfg.alacritty alacritty)
      (mkIf cfg.anytype anytype)
      (mkIf cfg.godot godot_4)
      ];
    
    sessionVariables = {
		  BROWSER = mkIf cfg.brave "${pkgs.brave}/bin/brave";
	  };
	};
}
