{ config, pkgs, lib, ... }:

lib.mkIf config.apps.rofi.enable {
  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
  };
}
