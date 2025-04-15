
{   
    pkgs,
    ...
}:

{
    programs.nixvim = {
        extraPlugins = with pkgs.vimPlugins; [lazydev-nvim];
    };
}
