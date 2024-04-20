{
  description = "My NixOS configuration flake";
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, ... }:
  let
    systemSettings = {
      hostname = "battlestation";
    };

    userSettings = {
      name = "teesh";
      realName = "Teesh";
      email = "ilaylevy611@gmail.com";

      font = "JetBrainsMono Nerd Font";

      browser = "firefox";
      shell = "fish";
      editors = [ "neovim" "vscode" "emacs" ];
      wms = [ "bspwm" "i3" ];

      background = ./wallpaper.png;

      config = "./user/cfg";

      git = {
        name = "teesh3rt";
      };
    };

    system = "x86_64-linux";

    lib = nixpkgs.lib;
    pkgs = (import nixpkgs { 
      inherit system;
      config = { allowUnfree = true; allowUnfreePredicate = (x: true); };
    });

    unstable = (import nixpkgs-unstable { 
      inherit system;
      config = { allowUnfree = true; allowUnfreePredicate = (x: true); };
    });
  in
  {
    nixosConfigurations.${systemSettings.hostname} = lib.nixosSystem {
      inherit system;
      modules = [ ./system/configuration.nix ];
      specialArgs = { inherit userSettings; inherit systemSettings; inherit unstable; };
    };
    homeConfigurations.${userSettings.name} = home-manager.lib.homeManagerConfiguration {
      inherit pkgs;
      modules = [ ./user/home.nix ];
      extraSpecialArgs = {
        inherit userSettings;
        inherit systemSettings;
	inherit unstable;
      };
    };
  };
}
