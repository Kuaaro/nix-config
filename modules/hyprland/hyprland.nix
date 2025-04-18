{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.hyprland;

in {
  config = mkIf cfg {
    programs.hyprland.enable = true;
    
    home-manager.users."${config.commons.main_username}".home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
      #wayland.windowManager.hyprland = {
      #  enable = true;
      #  settings = {
      #    bind = [
      #        #TODO need to check if brave is installed
      #        "SUPER, B, exec, brave"
      #        "SUPER_CTRL, Delete, killactive"
      #        #TODO terminal by config
      #        "SUPER, C, exec, alacritty"
      #        
      #    ];
      #  };
      #};
    #};
  };
}
