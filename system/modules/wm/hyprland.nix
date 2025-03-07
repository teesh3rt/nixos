{ pkgs, lib, config, ... }:

{
  imports = [
    ../apps/kitty.nix
  ];

  options = {
    wm.hyprland.enable = lib.mkEnableOption "Whether to enable Hyprland";
  };

  config = lib.mkIf config.wm.hyprland.enable {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
    
    environment.sessionVariables = {
      WLR_NO_HARDWARE_CURSORS="1";
      NIXOS_OZONE_WL="1";
    };

    hardware.graphics.enable = true;

    xdg.portal = {
      enable = true;
      extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
    };

    apps.kitty.enable = true;
  };
}
