{ config, lib, inputs, ... }:

{
  imports = [
    inputs.nixos-hardware.nixosModules.framework-13-7040-amd
  ];

  config.modules = {
    partitions = {
      swap = true;
      luks = true;
      #home-fs = "btrfs";
      root-fs = "btrfs";
    };
    gnome = true;
    programs = {
      localsend = {
        enable = true;
        deviceName = "Kuaaro's Framework (ceres)";
      };
      brave = true;
      fastfetch = true;
      speedtest-go = true;
      #raider = raider;
      unityhub = true;
		  libreoffice = true;
		  kicad = true;
		  alacritty = true;
		  anytype = true;
		  godot  = true;
    };
    bootloader = {
      bootloader = "systemd-boot";
      plymouth_theme = "blahaj";
    };
    programming = {
      git = {
        enable = true;
        e-mail = "that.kuaaro@gmail.com";
      };
      vscodium = true;
      rider = true;
      languages = {
        python = true;
        latex = true;
      };
    };
    printing = true;
    security = {
      fingerprint = true;
      escal_tool = "doas";
    };
  };
}
