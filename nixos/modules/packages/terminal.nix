# Rohaan's NixOS Config - Terminal packages

{ config, pkgs, ... }:

# Import nixCats.nix for declarative plugin management
let
  myNeovim = import "/etc/nixos/modules/packages/nixcats.nix" {
    inherit pkgs;
    #luaPath = /home/rohaan/.config/nvim;
    luaPath = /. + "${config.myConfig.homeDir}/.config/nvim";
  };
in

{

  environment.systemPackages = with pkgs; [
    # Dev
    myNeovim                  # Text Editor
    tmux                      # Terminal Multiplexer
    stow                      # Dotfiles Management
    git                       # Git
    gh                        # GitHub

    # CLI Tools
    zoxide                    # Better CD
    fzf                       # Fuzzy Find
    tree                      # Tree Listing
    ripgrep                   # Better Grep
    bat                       # Better cat
    nix-search-tv             # FZF For Nix Packages/Options

    # CLI Apps
    btop                      # System Resource Monitor
    nvtopPackages.amd         # GPU Resource Monitor (Change based on GPU brand)
    discordo                  # Client for Discord
    tdf                       # PDF Viewer
    img-cat                   # Image Viewer
    yazi                      # File Manager
    cmus                      # Music Player
    taskwarrior3              # Task Manager
    visidata                  # Spreadsheet editor

    # Hardware/System Inspection
    lshw                      # Show Bus ID values
    xev                       # Event Logger
    usbutils                  # Shows USB Devices

    # Terminal Aesthetics
    fastfetch                 # System Specs
    starship                  # Custom Prompt

    # Fun
    fortune                   # Fortune Cookies
    cowsay                    # Cow ASCII Art
    tt                        # Terminal Typing Test
    asciiquarium              # ASCII Aquarium
    cbonsai                   # ASCII Bonsai
    cava                      # Waveform
    cmatrix                   # Matrix Effect
    lolcat                    # Colours
    nyancat                   # Nyancat
    sl                        # Locomotive
    tty-solitaire             # Solitaire
    solitaire-tui             # Solitaire
    nsnake                    # Snake
    pipes                     # Pipes Screensaver
    bastet                    # Tetris
  ];

  # Configure Path for ripgrep config
  environment.sessionVariables = {
    RIPGREP_CONFIG_PATH = "/home/rohaan/.ripgreprc";
  };

}
