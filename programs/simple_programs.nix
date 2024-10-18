{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neofetch
    speedtest-rs
    libreoffice
    drawio
    vial
  ];
}