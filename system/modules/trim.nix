{ 
    config, 
    pkgs, 
    ... 
}:

{
    # Включение Trim для SSD
    services.fstrim = {
        enable = true;
        interval = "weekly";
  };
}
