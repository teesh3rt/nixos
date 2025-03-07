{ ... }:

{
  imports = [
    ./wm/gnome.nix
    ./apps/firefox.nix
  ];

  wm = {
    gnome.enable = true;
  };

  apps = {
    firefox.enable = true;
  };
}
