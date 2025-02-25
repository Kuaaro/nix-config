{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.programming.git;

in {
  options.modules.programming.git = {
    enable = mkEnableOption "git";
    e-mail = mkOption {
      type = lib.types.strMatching "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}" "email address";
      example = "user@example.com";
      desxription = "e-mail to be used";
    };
  };
  
  config = mkIf cfg.enable {
    home-manager.users."${config.commons.main_username}".programs.git = {
		  enable = true;
		  userName = "kuaaro";
		  userEmail = "${cfg.e-mail}";
	  };
  };
}
