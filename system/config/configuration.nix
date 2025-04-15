{
  config,
  pkgs,
  username,
  systemConfig,
  ...
}:

{
  imports = [
    ./hardware-configuration.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  programs.steam.enable = true;
  programs.steam.gamescopeSession.enable = true;
  system.stateVersion = "24.11";
}
