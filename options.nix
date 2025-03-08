{ lib, ... }:

{
  options = {
    apps.firefox.enable = lib.mkEnableOption "Whether or not to enable Firefox";
    apps.kitty.enable = lib.mkEnableOption "Whether to enable the Kitty Terminal";    
    apps.vim.enable = lib.mkEnableOption "Whether to enable VIM";
    apps.rofi.enable = lib.mkEnableOption "Whether to enable ROFI";    

    generic.styling.enable = lib.mkEnableOption "Whether or not tn enable Stylix";

    hw.nvidia.enable = lib.mkEnableOption "Enable NVIDIA's drivers";

    wm.gnome.enable = lib.mkEnableOption "Whether or not to enable GNOME";
    wm.hyprland.enable = lib.mkEnableOption "Whether to enable Hyprland";
  };
}
