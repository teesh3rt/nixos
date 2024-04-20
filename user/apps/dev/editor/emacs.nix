{ userSettings, lib, ... }:

let
  # nixmacs = import ./nixmacs.nix;
in
{
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [
      magit
      gruvbox-theme
      doom-modeline
      ivy
  
      nix-mode
      rjsx-mode
    ];
    extraConfig = ''
    (setq user-name "${userSettings.name}")
    (setq user-realName "${userSettings.realName}")
    (setq user-email "${userSettings.email}")
    
    (setq user-font "${userSettings.font}")

    (setq make-backup-files nil)

    (add-to-list 'default-frame-alist '(font . "${userSettings.font}-15"))
    (set-face-attribute 'default t :font user-font)

    (scroll-bar-mode -1)
    (tool-bar-mode -1)
    (menu-bar-mode -1)
  
    (ivy-mode)
    (doom-modeline-mode)
    (load-theme 'gruvbox-dark-hard t)

    (defadvice js-jsx-indent-line (after js-jsx-indent-line-after-hack activate)
      "Workaround sgml-mode and follow airbnb component style."
      (save-excursion
        (beginning-of-line)
        (if (looking-at-p "^ +\/?> *$")
            (delete-char sgml-basic-offset))))
    '';
  };
  # programs.emacs = nixmacs {
  #   packages = [
  #     "doom-modeline"
  #   ];
  #   settings = {
  #   };
  #   extra = "";
  # 
  #   inherit lib;
  # };
}
