# Rohaan's Nix Config - User file
{ config, pkgs, ... }:

{
  # Define primary user account.
  users.users.rohaan = {
    isNormalUser = true;
    description = "Rohaan Khawaja";
    shell = pkgs.bash;
    extraGroups = [ "networkmanager" "wheel" "input" "plugdev" ];
    packages = with pkgs; [];
  };

}
