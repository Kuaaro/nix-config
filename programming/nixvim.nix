{ nixvim, ... }:

{
  programs.nixvim = {
    enable = true;
    
    colorschemes.gruvbox.enable = true;
    
    viAlias = true;
    vimAlias = true;

    #plugins = {
    #  bufferline.enable = true;
    #  yazi.enable = true;
    #};
  };
}
