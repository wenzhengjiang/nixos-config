{ config, pkgs, ... }:

{
  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    networkmanagerapplet
    git
    google-chrome
    tmux
    xclip
    vim_configurable 
    wget
  ];
}
