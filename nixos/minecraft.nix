{ pkgs, lib, config, ... }:

{
  hardware.xpadneo.enable = true; # Enable the xpadneo driver for Xbox One wireless controllers

  boot = {
    extraModulePackages = with config.boot.kernelPackages; [ xpadneo ];
    extraModprobeConfig = ''
      options bluetooth disable_ertm=Y
    '';
  };

  environment.systemPackages = with pkgs; [ 
  prismlauncher
  bottles
  ];
}
