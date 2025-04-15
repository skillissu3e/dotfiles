{  
    pkgs, 
    ... 
}:

{
    programs.nixvim = {
        plugins.lsp-format = {
            enable = true;
            lspServersToEnable = [ "gopls" "bashls" "cssls" "html" "marksman" "nixd" "pylsp" "sqlls" "svelte" "ts_ls" ];
        }; 
    };
}
