{ pkgs, lib, inputs, ... }:

{
  imports =
    [
    	inputs.home-manager.nixosModules.default
    	
    	./system/default.nix
    ];
    
  nixpkgs = {
    config.allowUnfree = true;
    hostPlatform = lib.mkDefault "x86_64-linux";
  };
  
  home-manager = {
  	extraSpecialArgs = { inherit inputs; };
  	users."kuaaro" = import ./home/home.nix;
  };
  
  nix.settings.experimental-features = [ "nix-command" "flakes"];
  
  system.stateVersion = "24.05"; # Did you read the comment?
}

