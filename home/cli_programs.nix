{ pkgs, ... }:

{
	programs = {
		fastfetch.enable = true;
	};
	
	home.packages = with pkgs; [
	#	qemu
		speedtest-go
		raider
	];
	
	services.ollama = {
    enable = true;
    acceleration = "rocm";
  };
}
