{ pkgs, lib, config, ... }:

{
  options = {
    apps.firefox.enable = lib.mkEnableOption "Whether or not to enable Firefox";
  };
  config = lib.mkIf config.apps.firefox.enable {
    programs.firefox.enable = true;
  };
}
