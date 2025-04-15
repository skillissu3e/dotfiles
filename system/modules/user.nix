
{   
    config, 
    pkgs, 
    username, 
    ... 
}:

{
    programs.zsh.enable = true;

    users.users.${username} = {
        isNormalUser = true;
        extraGroups = [
            "wheel"
            "video"
            "audio"
            "docker"
            "dialout"
            "plugdev"
            "networkmanager"
        ];

        shell = pkgs.zsh;
    };

    services.getty.autologinUser = "${username}"; #autologin
}
