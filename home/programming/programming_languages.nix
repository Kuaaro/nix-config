{ pkgs, ... }:

{
	home.packages = with pkgs; [
		mono
		texliveFull
		#python312Packages.python
		#python312Packages.numpy
		#python312Packages.matplotlib
		
		(python312.withPackages(ps: with ps; [ 
			numpy
			matplotlib
			pyvista
		]))
	];
}
