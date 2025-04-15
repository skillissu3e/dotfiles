{
  config,
  lib,
  pkgs,
  homeConfig,
  ...
}:

{
  nixpkgs.config = {
    allowUnfree = true;
    allowUnfreePredicate = _: true;
  };

  home.packages = with pkgs; [
    jq
    fd # "find"
    imv # Image viewer
    mpv # Media player
    eza # "ls"
    bat # "cat"
    fzf # Fuzzy finder
    tmux
    mako # Notification daemon
    tldr # "man / --help"
    btop
    p7zip
    nitch # "fetch"
    gtrash # "rm"
    ripgrep # "grep"
    alacritty # Termnal
    google-chrome # Chrome
    telegram-desktop # Telegram
    firefox-devedition # Firefox

    swww
    sioyek
    brightnessctl
    nftables
    gcc
    cmake
    gnumake
    iptables
    iptables-nftables-compat
    bind
    yt-dlp
    nodejs
    ipset
    xviewer
    unrar
    opentabletdriver
    nemo
    tt
    ttyper
    glibc
    xwayland
    # steam
    qbittorrent
    brave
    # steam-tui
    sdl3
    sdl3-image
    mawk
    parallel-full
    SDL
    rustup
  ];
}
