{
  description = "My configuration flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-24.11";
  };

  outputs = { self, nixpkgs }: let
    lib = nixpkgs.lib;
  in {
    nixosConfigurations.taki = lib.nixosSystem {
      modules = [ ./system/configuration.nix ];
    };
  };
}
