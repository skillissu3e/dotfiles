{
  config,
  pkgs,
  inputs,
  system,
  lib,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    go_1_24 # Go programming language
    nh
    zip
    curlHTTP3
    curlFull
    file
    wget
    unzip
    seatd # Wayland session manager
    bluez
    docker
    waybar
    openssl
    gitFull
    wayland # Wayland display server protocol
    pipewire # Low-latency audio and video server
    usbutils # Tools for working with USB devices
    xwayland
    xdg-utils
    pulseaudio # Sound server for handling audio on Linux
    glaxnimate # Animation vector graphics tool
    bluez-tools
    pavucontrol # Graphical sound mixer for PulseAudio
    wl-clipboard

    # Home-manager
    niri
    home-manager
    python312
    xorg.libX11
    python312Packages.ply

    rustup

    haskellPackages.SDL-ttf
    haskellPackages.SDL-gfx
    haskellPackages.SDL-mixer
    haskellPackages.SDL-image
    haskellPackages.SDL
    SDL2
    SDL2_net
    SDL2_gfx
    lutris

    steam
    steamcmd
    steam-run
    gamemode
    gamescope
    steam-tui
    steam-unwrapped
  ];

  nixpkgs.config.allowUnfreePredicate =
    pkg:
    builtins.elem (lib.getName pkg) [
      "steam"
      "steam-original"
      "steam-unwrapped"
      "steam-run"
    ];
}
