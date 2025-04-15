{ 
    pkgs, 
    ... 
}:

{
    programs.nixvim = {
        plugins.colorizer = {
            enable = true;
        };
    };
}
