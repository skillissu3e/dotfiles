{  
    config, 
    pkgs, 
    ... 
}:

{
    imports = [
        ./alacritty
        ./git
        ./mpv
        ./nixvim
        ./zsh
    ];
}
