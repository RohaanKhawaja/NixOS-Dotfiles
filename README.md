# Rohaan's Dotfile Setup for NixOS (and other distros)

Designed to be portable between different operating systems but primarily for use with NixOS

## Step by step setup guide

1. Install NixOS with no desktop environment and connect to the internet.
2. Temporarily install git, and stow:
```
nix-shell -p git stow neovim
```
3. Clone the repo:
    git clone https://github.com/RohaanKhawaja/NixOS-Dotfiles ~/dotfiles
4. Modify the `user.nix` file to contain your username.
```
nvim ~/dotfiles/nixos/modules/user.nix
```
5. Open the `configuration.nix` file in a text editor.
```
nvim ~/dotfiles/nixos/configuration.nix
```
Comment out all desktop modules other than the one you wish to use.
6. Modify the user attributes to match your user name, home directory, and desktop choice.
7. Delete the default `configuration.nix` file at `/etc/nixos` using:
```
sudo rm configuration.nix
```
8. Return to `~/dotfiles` and run the following command:
```
sudo stow -t /etc/nixos nixos
```
9. Rebuild the system using `sudo nixos-rebuild switch` and reboot!
10. Return to `~/dotfiles` and run the following command:
```
stow *
```
