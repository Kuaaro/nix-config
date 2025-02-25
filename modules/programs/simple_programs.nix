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
    packages =
      options cfg.brave [ "brave" ] ++
      options cfg.brave [ "fastfetch" ] ++
      options cfg.brave [ "speedtest-go" ] ++
      options cfg.brave [ "raider" ] ++
      options cfg.brave [ "unityhub" ] ++
      options cfg.brave [ "libreoffice" ] ++
      options cfg.brave [ "kicad" ] ++
      options cfg.brave [ "alacritty" ] ++
      options cfg.brave [ "anytype" ] ++
      options cfg.brave [ "godot_4" ];
    
    home.sessionVariables = {
		  BROWSER = mkIf cfg.brave "${pkgs.brave}/bin/brave";
	  };
	};
}
