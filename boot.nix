{ config, pkgs,... }:

{
  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
      };
    };
    initrd = {
      systemd.enable = true;
      luks.devices."luks_lvm" = {
        device = "/dev/disk/by-uuid/0abf0f5e-4766-42ca-ab88-20dcca72a87d";
        preLVM = true;
        allowDiscards = true;
      };
      verbose = false;
    };
    plymouth = {
      enable = true;
      theme = "bgrt";
    };
    kernelParams = ["splash" "quiet"];
#    environment.systemPackage = [plymouth];
  };
}
