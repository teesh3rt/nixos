{ nix-colors, userSettings, ... }:

{
  programs.kitty = {
    enable = true;
    font = {
      name = "JetBrainsMono Nerd Font";
      size = 13;
    };
    theme = "Gruvbox Dark";
    extraConfig = "shell tmux a";
  };
}
