{ 
    pkgs, 
        ...  
}:

{
    programs.nixvim = {
        plugins.lsp = {
            enable = true;
            servers = {
                bashls = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                ccls = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                cssls = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                html = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                gopls = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };
                marksman = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };
                nixd = {
                    enable = true;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                pylsp = {
                    enable = false;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                sqlls = {
                    enable = true;
                    autostart = true;
                    package = pkgs.sqls;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                svelte = {
                    enable = false;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };

                java_language_server = {
                    enable = false;
                    autostart = true;
                    settings = {
                        offsetEncoding = "utf-8";
                    };
                };
            };
        };
    };
}
