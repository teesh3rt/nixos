{ lib, pkgs, ... }:

{
  options = {
    apps.firefox.enable = lib.mkEnableOption "Firefox";
    apps.kitty.enable = lib.mkEnableOption "the Kitty Terminal";    
    apps.vim.enable = lib.mkEnableOption "VIM";
    apps.rofi.enable = lib.mkEnableOption "ROFI";    
    apps.rofi.package = lib.mkOption {
      description = "The package to use for ROFI";
      default = pkgs.rofi;
      example = pkgs.rofi-wayland;
      type = lib.types.package;
    };    

    generic.styling.enable = lib.mkEnableOption "Stylix";

    hw.nvidia.enable = lib.mkEnableOption "NVIDIA's drivers";

    wm.gnome.enable = lib.mkEnableOption "GNOME";
    wm.hyprland.enable = lib.mkEnableOption "Hyprland";
  };
}
