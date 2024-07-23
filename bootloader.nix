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
    };
    consoleLogLevel = 3;
    plymouth = {
      enable = true;
      themePackages = [ pkgs.catppuccin-plymouth ];
      theme = "catppuccin-macchiato";
    };
    kernelParams = ["splash" "quiet"];
  };
}
