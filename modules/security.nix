{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.security;

in {
  options.modules.security = {
    escal_tool = mkOption {
      type = types.enum [ "sudo" "doas" ];
      default = "sudo";
      description = "Escalation tool";
    };
  };
  config = {
    mkIf (cfg.escal_tool == "sudo") {
      security.sudo = {
        enable = true;
        users = [ "${cfg.commons.main_username}" ];
      };
    };
    mkIf (cfg.escal_tool == "doas") {
      security.sudo.enable = false;
      doas = {
        enable = true;
        extraRules = [{
          users = [ "${cfg.commons.main_username}" ];
	        keepEnv = true;
	        persist = true;
        }];
    };
    };
  };
}
