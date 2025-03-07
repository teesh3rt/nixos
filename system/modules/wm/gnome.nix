{ pkgs, lib, config, ... }:

{
  options = {
    wm.gnome.enable = lib.mkEnableOption "Whether or not to enable GNOME";
  };
  config = lib.mkIf config.wm.gnome.enable {
    services.xserver.enable = true;

    services.xserver.displayManager.gdm.enable = true;
    services.xserver.desktopManager.gnome.enable = true;

    services.xserver.xkb.layout = "us";
  };
}
