{ ... }:

{
  imports = [
    ./wm/gnome.nix
    ./wm/hyprland.nix
    ./apps/firefox.nix
    ./apps/kitty.nix
    ./apps/rofi.nix
    ./hw/nvidia.nix
    ./generic/styling.nix
  ];
}
