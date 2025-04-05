{ pkgs, lib, config, ... }:

{
  options = {
  };
  config = lib.mkIf config.wm.gnome.enable {
    services.xserver.enable = true;

    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    services.xserver.xkb.layout = "us";
  };
}
