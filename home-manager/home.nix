{
  pkgs,
  inputs,
  username,
  ...
}:

{
  home = {
    username = username;
    homeDirectory = "/home/${username}";
    stateVersion = "24.11";
  };
  programs.home-manager.enable = true;
}
