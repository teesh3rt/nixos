{ pkgs, ... }:

let
    snibbe = import ./snibbe/default.nix { inherit pkgs; };
in
{
    home.packages = [ snibbe ];
}
