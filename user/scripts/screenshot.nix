{ pkgs }:

pkgs.writeShellScriptBin "screenshot" ''
    ${pkgs.shotgun}/bin/shotgun -g $(${pkgs.hacksaw}/bin/hacksaw) /tmp/screenshot.png
    ${pkgs.xclip}/bin/xclip -selection clipboard -target image/png /tmp/screenshot.png
''
