{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.printing;

in {
  options.modules.printing = { enable = mkEnableOption "printing"; };
  config = mkIf cfg.enable {
    services = {
		printing.enable = true;
		  avahi = {
			  enable = true;
			  nssmdns4 = true;
			  openFirewall = true;
		  };
	  };
  };
}
