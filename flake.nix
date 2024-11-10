{
  description = "Kuaaro's Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    #nixvim = {
    #  url = "github:nix-community/nixvim";
    #  inputs.nixpkgs.follows = "nixpkgs";
    #};
    #nix-vscode-extensions = {
    #	url = "github:nix-community/nix-vscode-extensions";
    #	inputs.nixpkgs.follows = "nixpkgs";
    #};
  };

  outputs = { self, nixpkgs, home-manager,  ... } @ inputs:
  let
  	system = "x86_64-linux";
  in
  {
    nixosConfigurations."kuaaros-framework" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./system/system.nix
        inputs.home-manager.nixosModules.default
      ];
    };
  };
}
