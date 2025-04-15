{ 
    config, 
    pkgs, 
    systemConfig,
    lib,
    ... 
}:

{
    networking = {
interfaces.enp3s0.useDHCP = lib.mkDefault true;
        hostName = systemConfig.hostname;
        networkmanager.enable = true;
        networkmanager.insertNameservers = ["8.8.8.8" "1.1.1.1"];
        firewall.enable = false;
  };
}
