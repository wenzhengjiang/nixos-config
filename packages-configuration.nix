{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    arandr
    awscli
    dnsutils
    docker
    networkmanagerapplet
    gcc
    git
    google-chrome
    htop
    i3lock
    lm_sensors
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
    vagrant
    vim_configurable
    virtualbox
    wget
  ];
}
