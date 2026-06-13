# Rohaan's NixOS Config - Gaming packages 

{ config, pkgs, ... }: 

{

  # Steam
  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
  };

}
