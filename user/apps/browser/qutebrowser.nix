{ userSettings, stylix, ... }:

{
  programs.qutebrowser = {
    enable = true;
    searchEngines = {
      nix = "https://mynixos.com/search?q={}";
    };
    settings.colors = {
      webpage.preferred_color_scheme = "dark";
    };
  };
}
