{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    autojump
    dropbox
    networkmanagerapplet
    git
    google-chrome
    htop
    tmux
    xclip
    vim_configurable 
    wget
  ];
}
