{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      bbenoist.nix
    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      {
        name = "vscode-theme-onedark";
        publisher = "akamud";
        version = "2.3.0";
        sha256 = "8GGv4L4poTYjdkDwZxgNYajuEmIB5XF1mhJMxO2Ho84=";
      }
    ];
    userSettings = {
      "workbench.colorTheme" = "Atom One Dark";
      "window.zoomLevel" = 3;
      "editor.fontFamily" = "JetBrainsMono Nerd Font, Ariel";
      "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";
    };
  };
}
