{ ... }:

{
	imports = [
		./graphical/default.nix
		
		./bootloader.nix
		./git.nix
		./hardware.nix
		./kernel.nix
		./main-user.nix
		./networking.nix
		./partitions.nix
		./security.nix
		./shells.nix
	];
}
