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

  programs.git = {
    enable = true;
    userName = "uzmoi";
    userEmail = "63585970+uzmoi@users.noreply.github.com";
    aliases = {
      graph = "log --oneline --graph --all";
      ignore-files = "ls-files -io --exclude-standard";
      unstage = "restore --staged";
    };
    difftastic.enable = true;
    extraConfig = {
      init.defaultBranch = "main";
      fetch.prune = true;
      rebase.autostash = true;
      rerere.enabled = true;
      push.autoSetupRemote = true;
      push.useForceIfIncludes = true;
    };
  };
}
