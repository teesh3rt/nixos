{
  description = "My configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
    home-manager.url = "github:nix-community/home-manager/release-24.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    stylix.url = "github:danth/stylix/release-24.11";
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
