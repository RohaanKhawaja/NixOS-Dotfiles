# Rohaan's Nix Config - Input Settings

{ config, pkgs, ... }:

{
  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Acer Swift 16 AI (SF16-71T) Touchpad Fix
  # Firmware declares incorrect max value for ABS_MT_PRESSURE (2432 instead of 500) causing all touch inputs to be rejected. Palm rejection is handled in firmware.
  environment.etc."libinput/local-overrides.quirks".text = ''
    [Pixart Touchpad (093A:4813)]
    MatchBus=i2c
    MatchUdevType=touchpad
    MatchVendor=0x093A
    MatchProduct=0x4813
    AttrEventCode=-ABS_MT_PRESSURE;-ABS_PRESSURE;-ABS_MT_DISTANCE;-ABS_MT_TOUCH_MAJOR;-ABS_MT_TOUCH_MINOR
  '';

  # Enable Kanata for more advanced keyboard remapping
  environment.systemPackages = [ pkgs.kanata ];

  systemd.services.kanata = {
    description = "Kanata keyboard remapper";
    after = [ "graphical.target" ];
    serviceConfig = {
      ExecStart = "/run/current-system/sw/bin/kanata --cfg ${config.myConfig.homeDir}/.config/kanata/kanata.kbd";
      Type = "simple";
      Restart = "no";
    };
    wantedBy = [ "graphical.target" ];
  };
}
