{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    
    cargo
    rustc
    
    zig
    zls
  ];
}
