{ config, lib, pkgs,...  }:

{
  networking = {
    hostName = "kuaaros-framework";
    networkmanager.enable = true;
    useDHCP = lib.mkDefault true;
#    wireless = {
#      networks = {
#      enable = true;
#        "Rob" = {
#          psk = "PArtenogeneza77!";
#        };
#        "Z13" = {
#          psk = "Olinek13!";
#        };
#      };
#    };
  };
}
