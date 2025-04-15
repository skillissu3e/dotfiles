
{ 
    config, 
    pkgs, 
    ... 
}:

{
    # GnuPG
    programs.gnupg.agent = {
        enable = true;
        enableSSHSupport = true;
    };

    # Поддержка MTP для Android
    services.gvfs.enable = true;

    # Nix-LD
    programs.nix-ld = {
        enable = true;
        libraries = with pkgs; [ pkgs.stdenv.cc.cc.lib ];
    };

}
