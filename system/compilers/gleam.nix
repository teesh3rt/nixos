{ pkgs, unstable, ... }:

{
    environment.systemPackages = [
	unstable.gleam
	pkgs.beam.interpreters.erlang_26
	pkgs.rebar3
    ];
}
