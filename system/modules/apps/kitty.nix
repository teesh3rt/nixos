{ pkgs, config, lib, ... }:

{
  options = {
    apps.kitty.enable = lib.mkEnableOption "Whether to enable the Kitty Terminal";    
  };

  config = lib.mkIf config.apps.kitty.enable {
    environment.systemPackages = [
      pkgs.kitty
    ];
  };
}
