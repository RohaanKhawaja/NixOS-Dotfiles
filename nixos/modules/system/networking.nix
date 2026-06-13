# Rohaan's Nix Config - Networking Settings

{config, pkgs, ...}:

{
  # Define host name 
  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;
}
