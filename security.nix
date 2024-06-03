{ config, pkgs,... }:

{
  security = {
    sudo = {
      enable = false;
#      configFile = ''
#        %wheel ALL=(ALL) ALL
#      '';
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
