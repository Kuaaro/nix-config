{ ... }:

{
  imports = [
    ./programs/default.nix
    ./programming/default.nix
    
    ./bootloader.nix
    ./gnome.nix
    ./kernel.nix
    ./main_user.nix
    ./networking.nix
    ./partitions.nix
    ./printing.nix
    ./security.nix
  ];
}
