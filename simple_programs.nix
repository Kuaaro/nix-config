{ config, pkgs,... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    gparted
# plymouth themes    adi1090x-plymouth-themes
  ];
}
