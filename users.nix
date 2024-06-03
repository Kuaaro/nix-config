{ config, pkgs,... }:

{
  users = {
    users."kuaaro" = {
      isNormalUser = true;
      extraGroups = [ "doas_group" "networkmanager"];
      shell = pkgs.fish;
    };

    groups."doas_group" = {};
  };
}
