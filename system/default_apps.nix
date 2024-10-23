{ config, pkgs, ... }:

{
  programs.xdg = {
    enable = true;
    mime.enable = true;
    defaultApplications = {
      "text/html" = "${config.programs.brave.package}/bin/brave";
    };
  };

  services.xdg-desktop-portal-wlr = {
    enable = true;
    extraArgs = "--default-browser=${config.programs.brave.package}";
  };
}

