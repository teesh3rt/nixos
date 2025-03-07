{ ... }:

{
  imports = [
    ./wm/gnome.nix
    ./apps/firefox.nix
    ./hw/nvidia.nix
  ];

  wm = {
    gnome.enable = true;
  };

  apps = {
    firefox.enable = true;
  };

  hw = {
    nvidia.enable = true;
  };
}
