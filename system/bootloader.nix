{ pkgs,  ... }:

{
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 2;
    };
    initrd = {
      enable = true;
      systemd.enable = true;
      verbose = false;
      
      availableKernelModules = [ "nvme" "xhci_pci" "thunderbolt" "uas" "sd_mod" ];
      kernelModules = [ "dm-snapshot" ];
    };
    consoleLogLevel = 3;
    plymouth = {
      enable = true;
      themePackages = [ pkgs.adi1090x-plymouth-themes ];
      theme = "loader_alt";
    };
    kernelModules = [ "kvm-amd" ];
  };
}
