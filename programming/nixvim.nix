{ nixvim, ... }:

{
  programs.nixvim = {
    enable = true;
    
    colorschemes.gruvbox.enable = true;
    
    viAlias = true;
    vimAlias = true;
    
    plugins = {
    	#nvim-tree.enable = true;
    	#nvim-surround.enable = true;
    	lsp = {
    		enable = true;
    		
    	};
    };

    #plugins = {
    #  bufferline.enable = true;
    #  yazi.enable = true;
    #};
  };
}
