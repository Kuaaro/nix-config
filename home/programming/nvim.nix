{ inputs, ... }:

{
	imports = [
		inputs.nixvim.homeManagerModules.nixvim
	];
	
	programs.nixvim = {
		enable = true;
		
		viAlias = true;
		vimAlias = true;
		
		colorschemes.tokyonight.enable = true;
		
	};
}
