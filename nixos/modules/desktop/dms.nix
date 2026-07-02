# Rohaan's Nix Config - Hyprland Desktop Configuration

{ config, pkgs, ... }:

{
  # Enable DMS and modules
  programs.dms-shell = {
    enable = true;

    systemd = {
      enable = true;                    # Systemd service for auto-start
      restartIfChanged = true;          # Auto-restart dms.service when dms-shell changes
    };

    # Core features
    enableSystemMonitoring = true;      # System monitoring widgets (dgop)
    enableVPN = true;                   # VPN management widget
    enableDynamicTheming = true;        # Wallpaper-based theming (matugen)
    enableAudioWavelength = true;       # Audio visualizer (cava)
    enableCalendarEvents = true;        # Calendar integration (khal)
    enableClipboardPaste = true;        # Pasting from the clipboard history (wtype)
  };

  # Enable DankSearch
  programs.dsearch.enable = true;

  # Enable Dank Greeter
  services.displayManager.dms-greeter = {
    enable = true;
    compositor.name = "${config.myConfig.desktop}";
    configHome = "${config.myConfig.homeDir}";
    configFiles = [
      "${config.myConfig.homeDir}/.config/DankMaterialShell/settings.json"
      "${config.myConfig.homeDir}/.local/state/DankMaterialShell/session.json"
    ];
  };

}
