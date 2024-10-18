{ inputs, ... }:

{
  imports = [
    inputs.nixvim.nixosModules.nixvim

    ./nixvim.nix
    ./programming_languages.nix
    ./vscodium.nix
  ];
}
