{ ... }:

{
    services.mpd.enable = true;
    services.mpd.musicDirectory = "~/Music";
    services.mpd.extraConfig = ''
    audio_output {
	type "pulse"
	name "Legion H500 Pro 7.1 Headset"
    }
    '';
}
