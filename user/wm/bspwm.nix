{ userSettings, pkgs, ... }:

{
    imports = [ ./tools/polybar.nix ./tools/sxhkd.nix ];

    xsession.windowManager.bspwm = {
	enable = true;
	startupPrograms = [
	    "feh --bg-scale ${userSettings.background}"
	    "picom"
	    "sxhkd"
	    # "polybar bottom" # wanna try barless
	    "setxkbmap -option grp:alt_shift_toggle us,il"
	];
	monitors = {
	    HDMI-0 = [
		""
		""
		"󰙯"
		"󰓓"
		""
		"󰂫"
		""
	    ];
	};
    };

    home.packages = [
	pkgs.feh
	pkgs.picom
    ];
}
