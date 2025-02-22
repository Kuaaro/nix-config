{ config, lib, inputs, ... }:

{
  config.modules = {
    partitions = {
      swap = true;
      luks = true;
      home-fs = "btrfs";
      root-fs = "ext4";
    };
    gnome.enable = true;
  };
}
