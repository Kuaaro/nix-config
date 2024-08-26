{ config, pkgs,... }:

{
  users = {
    users."kuaaro" = {
      isNormalUser = true;
      uid = 1000;
      extraGroups = ["networkmanager"];
      shell = pkgs.fish;
    };

  };
}
