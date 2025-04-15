{ 
    pkgs,
    ...
}:

{
    programs.nixvim = {
        plugins.noice = {
            enable = true;
            settings = {
                notify = {
                    enabled = false;
                };
                messages = {
                    enabled = true;
                };
                lsp = {
                    messages = {
                        enabled = true;
                    };
                    progress = {
                        enabled = false;
                        view = "mini";
                    };
                };
                popupmenu = {
                    enabled = true;
                    backend = "nui";
                };
                format = {
                    filter = {
                        pattern = [":%s*%%s*s:%s*" ":%s*%%s*s!%s*" ":%s*%%s*s/%s*" "%s*s:%s*" ":%s*s!%s*" ":%s*s/%s*"];
                        icon = "\ue68f";
                        lang = "regex";
                    };
                    replace = {
                        pattern = [":%s*%%s*s:%w*:%s*" ":%s*%%s*s!%w*!%s*" ":%s*%%s*s/%w*/%s*" "%s*s:%w*:%s*" ":%s*s!%w*!%s*" ":%s*s/%w*/%s*"];
                        icon = "\udb85\udfaa";
                        lang = "regex";
                    };
                };
            };
        };
    };
}
