{ config, lib, pkgs, ... }:

lib.mkIf config.apps.rofi.enable {
  environment.systemPackages = [
    config.apps.rofi.package
  ];
}
