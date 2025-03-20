{ pkgs, lib, ... }:

{
  environment.systemPackages = with pkgs; [
    lunar-client
  ];
}
