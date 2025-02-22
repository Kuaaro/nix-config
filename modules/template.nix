{ pkgs, lib, config, ...}:

with lib;
let cfg = config.modules.PROGRAM;

in {
  options.module.PROGRAM = { enable = mkEnableOption "PROGRAM"; };
  config = mkIf cfg.enable {
  };
}
