{ unstable, ... }:

{
    programs.tmux = {
	enable = true;
	plugins = with unstable.tmuxPlugins; [
	    sensible
	    gruvbox
	];
	prefix = "C-w";
	baseIndex = 1;
	newSession = true;
    };
}
