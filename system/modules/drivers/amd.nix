{ 
    config, 
    pkgs, 
    ... 
}:

{
    hardware.opentabletdriver.enable = true;
    hardware.graphics = {
        enable = true;
        enable32Bit = true;
        extraPackages = with pkgs; [
            mesa
            libva
            amdvlk
            vaapiVdpau
            libvdpau-va-gl
        ];
        extraPackages32 = with pkgs.pkgsi686Linux; [
            amdvlk
            vaapiVdpau
            libvdpau-va-gl
        ];    
    };

    powerManagement.cpuFreqGovernor = "performance";
}
