{ ... }:

{
  imports = [
    ./partitions.nix
    ./gnome.nix
    ./main_user.nix
    ./programs/default.nix
  ];
}
