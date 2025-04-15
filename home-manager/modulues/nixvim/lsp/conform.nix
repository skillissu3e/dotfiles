{ 
    pkgs, 
    ... 
}:

{
    programs.nixvim = {
        plugins.conform-nvim = {
            enable = true;
            settings = { 
                formatters_by_ft = {
                    go = [ "gofumpt" ];
                    java = [ "google-java-format" ];
                };
            };
        };
    };
}
