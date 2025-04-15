
{ 
    config, 
    ... 
}:

{
    environment = { 
        variables = {
            EDITOR = "nvim";
            BROWSER = "firefox-devedition";
        };
        sessionVariables = {
            NIXOS_OZONE_WL = "1"; # Hint electron apps to use wayland
            MOZ_ENABLE_WAYLAND = "1"; 
            XDG_SESSION_TYPE = "wayland";
            WLR_NO_HARDWARE_CURSORS = "1";
            SDL_VIDEODRIVER = "wayland";
            CLUTTER_BACKEND = "wayland";
            GTK_USE_PORTAL = "1";
            NIXOS_XDG_OPEN_USE_PORTAL = "1";
        };
    };
}
