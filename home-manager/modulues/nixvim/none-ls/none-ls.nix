    { 
    pkgs, 
    ... 
}:

{
    programs.nixvim = {
        plugins.none-ls = {
            enable = true;
            enableLspFormat = true;
            settings.update_in_insert = true;
            sources.formatting = {
                golines.enable = true;
                sql_formatter = { 
                    enable = true;
                    package = pkgs.sqls;
                };
                shfmt.enable = true;
                prettierd.enable = true;
                yapf.enable = true;
            };
        };
    };
}
