{ pkgs, lib, config, home-manager, ...}:

with lib;
let cfg = config.modules.programs.localsend;

in {
  options.modules.programs.localsend = {
    enable = mkEnableOption "localsend";
    deviceName = mkOption {
      type = types.str;
      default = "";
    };
  };
  
  config = mkIf cfg.enable {
    programs.localsend = {
      enable = true;
      openFirewall = true;
    };
    
    home-manager.users."${config.commons.main_username}".home.file.".local/share/org.localsend.localsend_app/shared_preferences.json" = {
		  enable = true;
		  text = ''
			  {
				  "flutter.ls_version":2,
				  "flutter.ls_alias":"${cfg.deviceName}",
				  "flutter.ls_color":"system",
				  "flutter.ls_auto_finish":true,
				  "flutter.ls_port":53317,
				  "flutter.ls_destination":"/home/${config.commons.main_username}/LocalSend",
				  "flutter.ls_advanced_settings":true,
				  "flutter.ls_save_to_history":false
			  }
		  '';
	  };
  };
}

#				  "flutter.ls_show_token":"345b473f-5cc8-40fb-b3f5-bb90c396fd1d",
#				  "flutter.ls_window_offset_x":26.0,
#				  "flutter.ls_window_offset_y":23.0,
#				  "flutter.ls_window_height":600.0,
#				  "flutter.ls_window_width":900.0,
#				  "flutter.ls_receive_history":[],
