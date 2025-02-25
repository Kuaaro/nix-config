{ ... }:

{
  imports = [
    ./bootloader.nix
    ./partitions.nix
    ./gnome.nix
    ./main_user.nix
    ./programs/default.nix
    ./programming/default.nix
  ];
}
