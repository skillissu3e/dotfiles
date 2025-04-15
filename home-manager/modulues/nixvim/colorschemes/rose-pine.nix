{
    pkgs, 
    ...
}:

{
    programs.nixvim = {
        colorschemes = {
            rose-pine = {
                enable = true;
                settings = {
                    dark_variant = "moon";
                    migrations = true;
                    terminal = true;
                    styles = {
                        transparency = true;
                    };
                };
            };
        };
    };
}
