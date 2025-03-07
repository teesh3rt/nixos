{
  description = "My configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix";
  };

  outputs = { self, nixpkgs, home-manager, stylix, }: let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations.taki = lib.nixosSystem {
      modules = [
        home-manager.nixosModules.home-manager
        stylix.nixosModules.stylix
        ./system/configuration.nix
      ];
    };
  };
}
