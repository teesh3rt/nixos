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

  wm = {
    gnome.enable = true;
    hyprland.enable = true;
  };

  apps = {
    firefox.enable = true;
  };

  hw = {
    nvidia.enable = true;
  };

  generic = {
    styling.enable = true;
  };
}
