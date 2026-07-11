# Rohaan's Nix Config - Hardare Settings

{ config, pkgs, ... }:

{
  # Enable GPU Acceleration
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Enable Bluetooth
  hardware.bluetooth = {
    enable = true;
  };

  # Enable Razer Hardware
  hardware.openrazer.enable = true;

  # Enable Upower
  services.upower.enable = true;

}
