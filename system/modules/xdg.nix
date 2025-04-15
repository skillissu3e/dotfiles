
{ 
    pkgs, 
    ... 
}:

{
  xdg = {
    autostart.enable = true;

    portal = {
      enable = true;

      configPackages = with pkgs; [
        xdg-desktop-portal-gtk  
      ];
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk 
      ];
    };
  };
}
