{ config, lib, pkgs, modulesPath, ... }:

{
  fileSystems = {
    "/" = {
      device = "/dev/disk/by-label/ROOT";
      fsType = "btrfs";
    };
    "/boot" = {
      device = "/dev/disk/by-label/BOOT";
      fsType = "vfat";
      options = [ "umask=0077" "defaults" ];
    };
  };
  
  swapDevices = [ 
    {
      device = "/dev/disk/by-label/SWAP";
    }    
  ];
  
  boot.initrd.luks.devices."luks_lvm" = {
    device = "/dev/disk/by-label/LUKS";
    preLVM = true;
    allowDiscards = true;
  };
}
