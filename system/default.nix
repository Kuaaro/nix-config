{ ... }:

{
	imports = [
		./graphical/default.nix
		
		./bootloader.nix
		./hardware.nix
		./kernel.nix
		./main-user.nix
		./partitions.nix
		./security.nix
	];
}
