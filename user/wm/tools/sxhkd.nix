{ pkgs, ... }:

{
    services.sxhkd = {
	enable = true;
	keybindings = {
	    "super + shift + s" = "screenshot";

	    "super + Return" = "kitty";
	    "super + d" = "rofi -show drun";
	    "super + Escape" = "pkill -USR1 -x sxhkd";
	    
	    "super + alt + {q,r}" = "bspc {quit,wm -r}";
	    "super + shift + q" = "bspc node -c";

	    "super + {t,f}" = "bspc node -t {tiled,fullscreen}";
	    
	    "super + {_,shift} + {Left,Down,Up,Right}" = "bspc node -{f,s} {west,south,north,east}";
	    "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

	    "super + ctrl + {Left,Down,Up,Right}" = "bspc node -p {west,south,north,east}";
	    "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
	    "super + ctrl + space" = "bspc node -p cancel";

	    "super + alt + {up,down,left,right}" = "bspc node -z {left -20 0,bottom 0 20,top 0 -20,right 20 0}";
	    "super + alt + shift + {up,down,left,right}" = "bspc node -z {right -20 0,top 0 20,bottom 0 -20,left 20 0}";
	};
    };

    home.packages = [ pkgs.sxhkd ];
}
