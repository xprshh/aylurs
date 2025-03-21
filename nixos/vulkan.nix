{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
    vulkanSupport = true; 
    intel = {
      enable = true;
      forceProbe = false; # Set to true if using an unsupported GPU
    };
  };
  gamescope.enable = true;
  services.xserver.videoDrivers = ["modesetting"];

  services.xserver.deviceSection = ''
    Driver "modesetting"
    Option "TearFree" "true"
  '';
}
