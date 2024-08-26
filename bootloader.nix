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
      luks.devices."luks_lvm" = {
        device = "/dev/disk/by-label/LUKS";
        preLVM = true;
        allowDiscards = true;
      };
      verbose = false;
    };
    consoleLogLevel = 3;
    plymouth = {
      enable = true;
      themePackages = [ pkgs.adi1090x-plymouth-themes ];
      theme = "loader";
    #  themePackages = [ pkgs.catppuccin-plymouth ];
    #  theme = "catppuccin-macchiato";
    };
    kernelParams = ["splash" "quiet"];
  };
}
