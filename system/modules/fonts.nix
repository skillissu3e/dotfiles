{
    pkgs,
    ...
}:

{
    fonts.packages = with pkgs; [
        nerd-fonts.monaspace
        noto-fonts
        font-awesome
        jetbrains-mono
        powerline-fonts
        noto-fonts-emoji
        powerline-symbols
        twemoji-color-font
        noto-fonts-cjk-sans
        nerd-fonts.symbols-only
    ];
}
