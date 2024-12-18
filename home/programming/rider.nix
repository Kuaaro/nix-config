{ pkgs, ... }:

{
	home.packages = with pkgs; [
		jetbrains.rider
	];
	
	xdg = {
    enable = true;
  #  mimeApps = {
  #    enable = true;
  #    defaultApplications = {
  #      "text/x-csharp" = ["jetbrains-rider.desktop"];
  #    };
  #  };
  };

}
