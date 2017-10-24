{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    dropbox
    networkmanagerapplet
    git
    google-chrome
    htop
    mplayer
    openvpn
    python
    silver-searcher
    smplayer
    tmux
    xclip
    xfce.thunar
    xfce.thunar_volman
    xfce.thunar-archive-plugin
    xfce.ristretto
    xfce.tumbler
    xflux-gui
    xorg.xbacklight
    vim_configurable
    wget
  ];
}
