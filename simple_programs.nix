{ config, pkgs,... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    gparted
    #tor
# plymouth themes    adi1090x-plymouth-themes
  ];
}
