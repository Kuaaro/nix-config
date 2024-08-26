{ ... }:

{
  security = {
    sudo = {
      enable = false;
    };
    doas = {
      enable = true;
      extraRules = [{
        users = ["kuaaro"];
	      keepEnv = true;
	      persist = true;
      }];
    };
  };
  services = {
    fprintd.enable = true;
  };
}
