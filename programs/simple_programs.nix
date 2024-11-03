{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    speedtest-go
    libreoffice
    drawio
    vial
    whatsapp-for-linux
    webcord
    kicad
    inkscape
  ];
}
