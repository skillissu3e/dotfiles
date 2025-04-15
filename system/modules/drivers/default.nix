{
    config, 
    pkgs, 
    ...
}:

{
    imports = [
        ./amd.nix
        ./audio.nix
    ];
}
