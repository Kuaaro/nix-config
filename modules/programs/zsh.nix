{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules;

in {
  options.modules = { zsh = mkEnableOption "zsh"; };
  config = mkIf cfg.zsh {
    home-manager.users."${config.commons.main_username}" = {
      programs.zsh = {
        enable = true;
        autocd = true;
        enableCompletion = true;

        syntaxHighlighting.enable = true;
        autosuggestion.enable = true;
        initExtra = ''
        bindkey '\e[1;3D' backward-word
        bindkey '\e[1;3C' forward-word
        fastfetch
        ''; #add option to check if fastfetch is installed
      };
    };
  };
}
