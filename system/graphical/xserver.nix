{ pkgs, ...}:

{
	services.xserver = {
		enable = true;
		videoDrivers = [ "displaylink" "modesetting" ];
	};
}
