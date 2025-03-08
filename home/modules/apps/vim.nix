{ config, lib, ... }:

lib.mkIf config.apps.vim.enable {
  programs.vim.enable = true;
}
