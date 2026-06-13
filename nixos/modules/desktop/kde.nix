# Rohaan's Nix Config - KDE Desktop Configuration 

{ config, pkgs, ... }: 

{

  # Enable Plasma desktop and SDDM session manager
  services = { 
    desktopManager.plasma6.enable = true; 
    displayManager.sddm.enable = true; 
    displayManager.sddm.wayland.enable = true; 
  }; 

  # Included Packages
  environment.systemPackages = with pkgs.kdePackages; [ 
    # KDE Utilities 
    kcharselect                  # Character Map
    kclock                       # Clock app 
    kcolorchooser                # Color picker
    ksystemlog                   # System log viewer 
    sddm-kcm                     # SDDM configuration module  
    plasma-browser-integration   # Browser Integration
  ];

  # Excluded packages
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    konsole
    elisa
    dolphin
    discover
    gwenview
    okular
    kate
    ark
    khelpcenter
    spectacle
  ];

}
