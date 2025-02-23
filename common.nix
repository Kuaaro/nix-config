{ config, lib, ... }:

{
  options.commons = {
    main_username = lib.mkOption {
      type = lib.types.str;
      default = "kuaaro";
    };
  };
}
