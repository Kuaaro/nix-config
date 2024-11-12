{ ... }:

{
	imports = [
		./graphical/default.nix
		
		./bootloader.nix
		./hardware.nix
		./kernel.nix
		./main-user.nix
		./networking.nix
		./partitions.nix
		./security.nix
		./shells.nix
	];
}
