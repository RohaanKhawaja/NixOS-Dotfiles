# Rohaan's Nix Config - Hardare Settings

{ config, pkgs, ... }: 

{ 
  # Enable GPU Acceleration
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  }; 

}
