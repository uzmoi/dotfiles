{ config, pkgs, ... }:

{
  home.username = "uzmoi";
  home.homeDirectory = "/home/uzmoi";
  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    bat
    difftastic
    dua
    eza
    fd
    fzf
    helix
    ripgrep
  ];

  programs.home-manager.enable = true;
}
