{ config, lib, pkgs,...  }:

{
  #environment.systemPackages = [pkgs.unstable.networkmanager];
  networking = {
    hostName = "kuaaros-framework";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
  };
}
