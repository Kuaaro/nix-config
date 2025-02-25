{ pkgs, lib, config, ... }:

with lib;
let 
  cfg = config.modules.security;
  main_username = config.commons.main_username;
in {
  options.modules.security = {
    escal_tool = mkOption {
      type = types.enum [ "sudo" "doas" ];
      default = "sudo";
      description = "Escalation tool";
    };
    fingerprint = mkEnableOption "fingerprint";
  };

  config = {
    mkMerge [
      (mkIf (cfg.escal_tool == "sudo") {
        security.sudo.enable = true;
        #security.sudo.users = [ "${main_username}" ];
      })
      (mkIf (cfg.escal_tool == "doas") {
        security.sudo.enable = false;
        security.doas.enable = true;
        security.doas.extraRules = [{
          users = [ "${main_username}" ];
          keepEnv = true;
          persist = true;
        }];
      })
    ];
    
    services.fprintd = mkIf cfg.fingerprint {
      enable = true;
    };
  };
}
