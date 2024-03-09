{ userSettings, ... }:

{
  programs.git = {
    enable = true;
    userName = userSettings.git.name;
    userEmail = userSettings.email;
  };
}