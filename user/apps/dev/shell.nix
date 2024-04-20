{ userSettings, ... }:

{
    programs.${userSettings.shell}.enable = true;
    programs.starship.enable = true;
}
