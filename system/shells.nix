{ config, pkgs,... }:

{
  #environment.systemPackages = [pkgs.unstable.fish];
  programs.fish = {
    enable = true;
    interactiveShellInit = ''
      set fish_greeting
      neofetch
    '';
  };
}
