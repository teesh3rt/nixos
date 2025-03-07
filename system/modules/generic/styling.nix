{ pkgs, lib, config, ... }:

{
  options = {
    generic.styling.enable = lib.mkEnableOption "Whether or not tn enable Stylix";
  };

  config = lib.mkIf config.generic.styling.enable {
    stylix.enable = true;
    stylix.image = pkgs.fetchurl {
      url = "https://gruvbox-wallpapers.pages.dev/wallpapers/pixelart/gruvbox_image11.png";
      sha256 = "sha256-Ae0Eij5xP+VMJzp/xs7isPk/U0NL2y5+3kKQKhdETck=";
    };
    stylix.base16Scheme = "${pkgs.base16-schemes}/share/themes/gruvbox-dark-hard.yaml";
  };
}
