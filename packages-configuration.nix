{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    arandr
    dropbox
    docker
    networkmanagerapplet
    git
    google-chrome
    htop
    i3lock
    lm_sensors
    marp
    mplayer
    openvpn
    php
    python
    okular
    rofi
    scrot
    silver-searcher
    smplayer
    tmux
    trash-cli
    xclip
    xfce.thunar
    xfce.thunar_volman
    xfce.thunar-archive-plugin
    xfce.ristretto
    xfce.tumbler
    xflux-gui
    xorg.xbacklight
    unzip
    vim_configurable
    wget
  ];
}
