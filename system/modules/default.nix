{ ... }:

{
  imports = [
    ./wm/gnome.nix
    ./wm/hyprland.nix
    ./apps/firefox.nix
    ./apps/kitty.nix
    ./hw/nvidia.nix
    ./generic/styling.nix
  ];
}
