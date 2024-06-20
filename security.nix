{ config, pkgs,... }:

{
  #environment.systemPackages = with pkgs.unstable[
  #  doas
  #  fprintd
  #];
  security = {
    sudo = {
      enable = false;
    };
    doas = {
      enable = true;
      extraRules = [{
        groups = ["doas_group"];
	keepEnv = true;
	persist = true;
      }];
    };
  };
  services.fprintd.enable = true;
}
