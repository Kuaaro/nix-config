{ config, lib, inputs, ... }:

{
  imports = [
    inputs.nixos-hardware.nixosModules.framework-13-7040-amd
  ];

  config.modules = {
    partitions = {
      swap = true;
      luks = true;
      home-fs = "btrfs";
      root-fs = "ext4";
    };
    gnome.enable = true;
    programs = {
      localsend = {
        enable = true;
        deviceName = "Kuaaro's Framework (ceres)";
      };
      brave = true;
    };
    bootloader = {
      bootloader = "systemd-boot";
      plymouth_theme = "loader_alt";
    };
    programming = {
      git = {
        enable = true;
        e-mail = "that.kuaaro@gmail.com";
      };
      vscodium = true;
    };
    printing.enable = true;
    security = {
      fingerprint = true;
      escal_tool = "doas";
    ];
  };
}
