# Rohaan's Nix Config - Hyprland Desktop Configuration

{ config, pkgs, ... }:

{
  # Enable Hyprland
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
    withUWSM = true;
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
    hypridle                            # Idling Utility
    hyprshade                           # Screen colour adjustment
    hyprcursor                          # Cursor Utility
    hyprpaper                           # Wallpaper Utility
    mpvpaper                            # Live Wallpaper daemon
    rose-pine-cursor                    # Cursor theme
    networkmanagerapplet                # Network Applet
    cliphist                            # Clipboard History
    quickshell                          # Shell UI

    # Replaced by Quickshell
    hyprlock                            # Lockscreen Utility (temporary enable till QS is configured)
    wofi                                # App Launcher (temporary enable till QS is configured)
    #waybar                              # Status Bar
    #swaynotificationcenter              # Notification Utility
  ];
}
