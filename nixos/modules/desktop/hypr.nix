# Rohaan's Nix Config - Hyprland Desktop Configuration

{ config, pkgs, ... }:

{
  # Import Dank Material Shell Config
  imports = [
    ./dms.nix
  ];

  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    #withUWSM = true;
  };

  # Ensure no session manager
  services.displayManager.sddm.enable = false;

  # Enable automatic login for the user.
  services.getty.autologinUser = "rohaan";

  # Enable audio
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Set session variables for Hyprland
  environment.sessionVariables = {
    # Set Cursor Theme
    HYPRCURSOR_THEME = "BreezeX-RosePine-Linux";
    HYPRCURSOR_SIZE = "24";
    XCURSOR_THEME = "BreezeX-RosePine-Linux";
    XCURSOR_SIZE = "24";
    # Current Desktop for auto login script depending on desktop
    CURRENT_DESKTOP = config.myConfig.desktop;
  };


  environment.systemPackages = with pkgs; [
    hyprshot                            # Screenshot Utility
    hyprshade                           # Screen colour adjustment
    hyprcursor                          # Cursor Utility
    mpvpaper                            # Live Wallpaper daemon
    rose-pine-cursor                    # Cursor theme
    networkmanagerapplet                # Network Applet

    # Replaced by Dank Material Shell
    swaynotificationcenter              # Notification Utility
    wofi                                # App Launcher
    hyprlock                            # Lockscreen Utility
    hypridle                            # Idling Utility
    cliphist                            # Clipboard History
    hyprpaper                           # Wallpaper Utility
  ];
}
