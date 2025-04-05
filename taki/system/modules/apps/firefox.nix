{ pkgs, lib, config, ... }:

{
  options = {
  };
  config = lib.mkIf config.apps.firefox.enable {
    programs.firefox.enable = true;
  };
}
