{ lib, config, ...}:

with lib;
let cfg = config.modules;

in {
  options.modules = { hyprland = mkEnableOption "hyprland"; };
  imports = [
    ./hyprland.nix
  ];
}
