{ userSettings, ... }:

{
    programs.rofi = {
	enable = true;
	theme = "gruvbox-dark";
	font = "${userSettings.font} 15";
    };
}
