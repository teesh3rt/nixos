{ pkgs, ... }:

{
    home.packages = with pkgs; [
	nil
	lua-language-server
	rust-analyzer
	nodePackages.typescript-language-server
	typst-lsp
    ];
}
