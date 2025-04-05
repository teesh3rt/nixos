{ config, lib, ... }:

lib.mkIf config.apps.kitty.enable {
  programs.kitty.enable = true;
}
