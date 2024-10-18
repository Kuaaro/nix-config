# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, inputs, ... }:

{
  imports =
    [ 
      ./graphical_session/module.nix
      ./programming/module.nix
      ./programs/module.nix
      ./system/module.nix
    ];
  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  
  system.stateVersion = "23.11"; # Did you read the comment?
}

