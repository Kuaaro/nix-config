{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules;

in {
  options.modules = { hyprland = mkEnableOption "hyprland"; };
  config = mkIf cfg.hyprland {
    home-manager.users."${config.commons.main_username}" = {
      programs.kitty.enable = true;
      wayland.windowManager.hyprland = {
        enable = true;
        
        settings = {
          "$mod" = "SUPER";  # Set SUPER key as modifier
    
          bind = [
            # Basic keybindings
            "$mod, Return, exec, kitty"  # Open terminal
            "$mod, Shift + Q, killactive"  # Close window
            #"$mod, Space, exec, rofi -show drun"  # Launch menu
            
            # Workspace navigation
            "$mod, Left, workspace, prev_on_output"
            "$mod, Right, workspace, next_on_output"
            
            # Window management
            "$mod, Shift + Left, moveleft"
            "$mod, Shift + Right, moveright"
            
            # Monitor management
            #"$mod, F1, exec, hyprctl monitor eyhd2 resolution 1920x1080"
            #"$mod, F2, exec, hyprctl monitor eDP1 resolution 1920x1080"
          ];
        #     ++ (
                # workspaces
                # binds $mod + [shift +] {1..9} to [move to] workspace {1..9}
        #        builtins.concatLists (builtins.genList (i:
        #          let ws = i + 1;
        #          in [
        #            "$mod, code:1${toString i}, workspace, ${toString ws}"
        #            "$mod SHIFT, code:1${toString i}, movetoworkspace, ${toString ws}"
        #          ]
        #        )
        #      9)
        #    );
        };
        
        #plugins = with inputs.hyprland-plugins.packages.${pkgs.stdenv.hostPlatform.system};[
          
        #];
        
        #package = null;
        #portalPackage = null;
      };
    };
    
    #nix.settings = {
    #  substituters = ["https://hyprland.cachix.org"];
    #  trusted-public-keys = ["hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="];
    #};
  };
}
