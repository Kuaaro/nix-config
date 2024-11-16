{ inputs, ... }:

{
	imports = [
		inputs.nixvim.homeManagerModules.nixvim
	];
	
	programs.nixvim = {
		enable = true;
		
		colorschemes.tokyonight.enable = true;
	};
}
