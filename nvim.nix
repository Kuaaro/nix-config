{ config, pkgs,...  }:

{
  #environment.systemPackages = [pkgs.unstable.neovim];
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    viAlias = true;
    vimAlias = true;
  };
}
