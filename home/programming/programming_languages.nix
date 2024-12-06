{ pkgs, ... }:

{
	home.packages = with pkgs; [
		mono
		texliveFull
		dotnet-sdk
		
		
		(python312.withPackages(ps: with ps; [ 
			numpy
			matplotlib
			pyvista
			imageio
		]))
	];

}
