{ config, pkgs, ... }:

{
  home.username = "uzmoi";
  home.homeDirectory = "/home/uzmoi";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
