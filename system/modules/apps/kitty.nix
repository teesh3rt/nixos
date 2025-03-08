{ pkgs, config, lib, ... }:

{
  options = {
  };

  config = lib.mkIf config.apps.kitty.enable {
    environment.systemPackages = [
      pkgs.kitty
    ];
  };
}
