{ config, pkgs,... }:

{
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
}
