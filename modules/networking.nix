{ lib, ... }:

{
  networking = {
    networkmanager.enable = true;
    firewall = {
      enable = true;

      #allowedTCPPorts = [
        #LocalSend
      #  53317
        #SyncThing
      #  8384 22000
      #];
      #allowedUDPPorts = [
        #LocalSend
      #  53317
        #SyncThing
      #  22000 21027
      #];
    };
    useDHCP = lib.mkDefault true;
    
    nftables.enable = true;
  };
  #services.zerotierone = {
  #	enable = true;
  #  joinNetworks = [
  #    "ebe7fbd4452aa3f7"
  #  ];
	#};
}
