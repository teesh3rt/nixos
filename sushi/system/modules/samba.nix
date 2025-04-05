{ ... }:
{
  services.samba = {
    enable = true;
    settings = {
      global = {
	"workgroup" = "WORKGROUP";
	"server string" = "smbnix";
	"netbios name" = "smbnix";
	"security" = "user";
        "hosts allow" = "0.0.0.0/0";
	"guest account" = "nobody";
	"map to guest" = "bad user";
      };
      "MegaShare" = {
	"path" = "/mnt/Shares/Megashare";
	"browseable" = "yes";
	"read only" = "no";
	"guest ok" = "yes";
	"create mask" = "0644";
	"directory mask" = "0755";
      };
    };
  };

  services.samba-wsdd = {
    enable = true;
    openFirewall = true;
  };

  networking.firewall.enable = true;
  networking.firewall.allowPing = true;
}
