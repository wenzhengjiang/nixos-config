# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./packages-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.grub.device = /dev/nvme0n1;

  networking.hostName = "nixos-X1"; # Define your hostname.
  networking.networkmanager.enable = true;

  # Select internationalisation properties.
  i18n = {
    consoleKeyMap = "us";
    defaultLocale = "en_US.UTF-8";
  };

  # Set your time zone.
  time.timeZone = "Australia/Sydney";

  fonts = {
    enableDefaultFonts = true;
    enableFontDir = true;
    fonts = with pkgs; [
      dejavu_fonts
      source-code-pro
      font-awesome-ttf
      powerline-fonts
      wqy_microhei
      wqy_zenhei
    ];
    fontconfig = {
      defaultFonts = {
        monospace = [ "DejaVu Sans Mono" ];
        sansSerif = [ "DejaVu Sans" ];
        serif = [ "DejaVu Serif" ];
      };
    };
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "us";
  services.xserver.xkbOptions = "eurosign:e";

  # Enable the KDE Desktop Environment.
  services.xserver.displayManager.sddm.enable = true;
  services.xserver.desktopManager.plasma5.enable = true;
  services.xserver.windowManager.i3.enable = true;
    
  # Power management
  services.tlp.enable = true;
  powerManagement.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.extraUsers.wjiang = {
    isNormalUser = true;
    home = "/home/wjiang";
    description = "Wenzheng Jiang";
    extraGroups = [ "wheel" "networkmanager" "docker"];
    shell = pkgs.zsh;
    uid = 1000;
  };

  users.extraGroups.docker = {};

  nixpkgs.config.allowUnfree = true;

  # The NixOS release to be compatible with for stateful data such as databases.
  system.stateVersion = "17.03";

  virtualisation.docker = {
    enable = true;
  };
}
