{
    pkgs, 
    ...
}:

{
    imports = [
        ./bufferlines/bufferline.nix
        ./colorschemes/rose-pine.nix
        ./completion/cmp-nvim-lsp-signature-help.nix
        ./completion/cmp.nix
        ./lsp/conform.nix
        ./lsp/lsp-format.nix
        ./lsp/lsp.nix
        ./none-ls/none-ls.nix
        ./pluginmanagers/lazy.nix
        ./statusline/staline.nix
        ./telescope/telescope.nix
        ./ui/indent-blankline.nix
        ./ui/noice.nix
        ./ui/nui-nvim.nix
        ./ui/nvim-notify.nix
        ./ui/nvim-web-devicons.nix
        ./utils/illuminate.nix
        ./utils/lazydev.nix
        ./utils/markdown-preview.nix
        ./utils/neoscroll.nix
        ./utils/nvim-colorizer.nix
    #   ./utils/oil.nix
        ./utils/project-nvim.nix
        ./utils/undotree.nix

        ./options.nix
        ./performance.nix
        ./remap.nix
    ];

    programs.nixvim = {
        enable = true;
        defaultEditor = true;
    };
}
