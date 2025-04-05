{ pkgs, ... }:

{
  wm = {
    gnome.enable = true;
    hyprland.enable = true;
  };

  apps = {
    firefox.enable = true;
    kitty.enable = true;
    rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
    };
    vim.enable = true;
  };

  hw = {
    nvidia.enable = true;
  };

  generic = {
    styling.enable = true;
  };
}
