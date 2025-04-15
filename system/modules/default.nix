{
    config,
    pkgs,
    inpurts,
    ...
}:

{
    imports = [
        ./bootloader.nix
        ./docker.nix
        ./drivers
        ./env.nix
        ./fonts.nix
        ./locale.nix
        ./nh.nix
        ./network
        ./ssh.nix
        ./tools.nix
        ./trim.nix
        ./user.nix
        ./xdg.nix
        ./zram.nix
    ];
}
