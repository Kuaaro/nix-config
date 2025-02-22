{
  outputs = { nixpkgs, ... }@inputs:
    let
      mkSystem = pkgs: system: hostname:
        pkgs.lib.nixosSystem {
          system = system;
          modules = [
            {
              system.stateVersion = "24.05";
              networking.hostName = hostname;
              nix.settings.experimental-features = [ "flakes" "nix-command"];
            }
            ./common.nix
            ./modules/default.nix
            (./. + "/hosts/${hostname}/hardware-configuration.nix")
            (./. + "/hosts/${hostname}/default.nix")
          ];
          specialArgs = { inherit inputs; };
        };
    in {
      nixosConfigurations = {
        ceres = mkSystem inputs.nixpkgs "x86_64-linux" "ceres";
      };
    };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
}
