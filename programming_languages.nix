{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    go
    #lua
    zig
  ];
}
