{ ... }:

{
  imports = [
    ./programs/default.nix
    ./programming/default.nix
    ./hyprland/default.nix
    
    ./bootloader.nix
    #./eww.nix
    ./gnome.nix
    #./hyprland.nix
    ./kernel.nix
    ./main_user.nix
    ./networking.nix
    ./partitions.nix
    ./printing.nix
    ./security.nix
  ];
}
