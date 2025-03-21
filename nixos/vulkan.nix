{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  programs.gamescope.enable = true;

  services.xserver.videoDrivers = ["modesetting"];

  services.xserver.deviceSection = ''
    Driver "modesetting"
    Option "TearFree" "true"
  '';
}
