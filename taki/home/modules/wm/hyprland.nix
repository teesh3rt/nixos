{ config, lib, pkgs, ... }:

lib.mkIf config.wm.hyprland.enable {
  wayland.windowManager.hyprland = {
    enable = true;

    settings = {
      monitor = ",preffered,auto,0.8";

      "$terminal" = "${pkgs.kitty}/bin/kitty";
      "$menu" = "${config.apps.rofi.package}/bin/rofi -show drun";

      exec-once = [
        "$terminal"
        "${pkgs.hyprpaper}/bin/hyprpaper"
      ];

      general = {
        gaps_in = "5";
        gaps_out = "20";
        border_size = "2";
        resize_on_border = "true";
        allow_tearing = "false";
        layout = "dwindle";
      };

      decoration = {
        rounding = "10";
        active_opacity = "1.0";
        inactive_opacity = "1.0";
        shadow = {
          enabled = "true";
          range = "4";
          render_power = "3";
        };
        blur = {
          enabled = "true";
          size = "3";
          passes = "1";
          vibrancy = "0.1696";
        };
      };
      
      dwindle = {
        pseudotile = "true";
        preserve_split = "true";
      };
      
      misc = {
        force_default_wallpaper = "0";
        disable_hyprland_logo = "true";
      };

      "$mainMod" = "SUPER";

      bind = [
        "$mainMod, Return, exec, $terminal"
        "$mainMod, Q, killactive"
        "$mainMod, M, exit"
        "$mainMod, V, togglefloating"
        "$mainMod, F, fullscreen"
        "$mainMod, D, exec, $menu"

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"
        "$mainMod, 3, workspace, 3"
        "$mainMod, 4, workspace, 4"
        "$mainMod, 5, workspace, 5"
        "$mainMod, 6, workspace, 6"
        "$mainMod, 7, workspace, 7"
        "$mainMod, 8, workspace, 8"
        "$mainMod, 9, workspace, 9"
        "$mainMod, 0, workspace, 10"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"
        "$mainMod SHIFT, 3, movetoworkspace, 3"
        "$mainMod SHIFT, 4, movetoworkspace, 4"
        "$mainMod SHIFT, 5, movetoworkspace, 5"
        "$mainMod SHIFT, 6, movetoworkspace, 6"
        "$mainMod SHIFT, 7, movetoworkspace, 7"
        "$mainMod SHIFT, 8, movetoworkspace, 8"
        "$mainMod SHIFT, 9, movetoworkspace, 9"
        "$mainMod SHIFT, 0, movetoworkspace, 10"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, resizewindow"
      ];
    };
  };
}
