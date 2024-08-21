{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  #Fetchers
    neofetch
    #onefetch
    ipfetch
    cpufetch
    ramfetch
    #htop
    #bottom
    #maybe btop
    #maybe zfxtop
    speedtest-rs
  ];
}
