{ 
    config, 
    lib, 
    pkgs, 
    ... 
}: 

{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        autosuggestion.enable = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            n = "nvim";
            v = "nixCats";
            c = "clear";
            mkdir = "mkdir -p";
            shutdown = "shutdown -h now";

            rm = "rm -rf --";
            ls = "eza --icons";
            sl = "eza --icons";
            ff = "nitch";
            cat = "bat";
            top = "btop";
            pdf = "sioyek";
            tree = "eza --icons --sort=type -T";

            flake = "cd ~/neverluv/";
            system = "cd ~/neverluv/system";
            home = "cd ~/neverluv/home-manager";
            nixvim = "cd ~/neverluv/home-manager/modulues/nixvim";
            cats = "cd ~/nixCats-nvim";
            pl = "cd ~/nixCats-nvim/lua/myLuaConf/plugins";
        };

        history = {
            size = 10000;
            path = "${config.xdg.dataHome}/zsh/history";
        };

        oh-my-zsh = {
          enable = true;
          plugins = [ "git" "man" "sudo" "vi-mode" "copyfile" ];
          theme = "robbyrussell"; 
        };
    };
}
