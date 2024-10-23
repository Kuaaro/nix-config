{ ... }:

{
  imports = [
    ./bootloader.nix
    ./module.nix
    ./hardware.nix
    ./kernel.nix
    ./networking.nix
    ./partitions.nix
    ./security.nix
    ./shells.nix
    ./users.nix
  ];
  services.automatic-timezoned.enable = true;
}
