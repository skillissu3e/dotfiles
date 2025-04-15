{
    config,
    pkgs,
    inputs,
    system,
    ...
}:

{
    # Allow unfree packages
    nixpkgs.config.allowUnfree = true;

    imports = [
        ./modules
        ./pkgs.nix
    ];
}
