{ pkgs, userSettings, ... }:

let
    colors = {
	background = "#282828";
	background-alt = "#3c3836";
	foreground = "#fbf1c7";
	primary = "#d79921";
	secondary = "#7c6f64";
	alert = "#cc241d";
	disabled = "#7c6f64";
    };
in
{
    services.polybar = {
	enable = true;
	script = "polybar bottom &amp;";
	config = {
	    "bar/bottom" = {
		# monitor = "\${env:MONITOR:HDMI-0}";
		width = "100%";
		height = "3%";
		radius = 0;
		bottom = true;

		background = colors.background;
		foreground = colors.foreground;

		seperator = "|";
		seperator-foreground = colors.disabled;

		font-0 = userSettings.font;

		modules-left = "xworkspaces";
		modules-center = "xwindow";
		modules-right = "date xkeyboard";

		wm-restack = "i3";
	    };

	    "module/xworkspaces" = {
		type = "internal/xworkspaces";

		label-active = "%name%";
		label-active-background = colors.primary;
		label-active-foreground = colors.background;
		label-active-padding = 1;

		label-occupied = "%name%";
		label-occupied-padding = 1;

		label-urgent = "%name%";
		label-urgent-background = colors.alert;
		label-urgent-padding = 1;

		label-empty = "%name%";
		label-empty-foreground = colors.disabled;
		label-empty-padding = 1;
	    };

	    "module/xkeyboard" = {
		type = "internal/xkeyboard";
		blacklist-0 = "num lock";

		label-layout = "%layout%";
		label-layout-foreground = colors.primary;
		label-layout-padding = 1;

		label-indicator-padding = 2;
		label-indicator-margin = 1;
		label-indicator-foreground = colors.background;
		label-indicator-background = colors.secondary;
	    };

	    "module/xwindow" = {
		type = "internal/xwindow";
		label = "%title:0:60:...%";
	    };

	    "module/date" = {
		type = "internal/date";
		internal = 5;
		date = "%d.%m.%y";
		time = "%H:%M";
		label = "%time% %date%";
	    };
	};
    };

    home.packages = [ pkgs.polybar ];
}
