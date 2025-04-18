{ 
    pkgs, 
    ... 
}:

{
    programs.mpv = {
        enable = true;
        config = {
            save-position-on-quit = true;
            profile = "gpu-hq";
            ytdl-format = "bestvideo+bestaudio";
            cache-default = 4000000;
            loop-file = "inf";
        };
    };
}
