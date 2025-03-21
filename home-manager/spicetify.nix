{ config, pkgs, inputs, ... }:

{
  imports = [ inputs.spicetify-nix.homeManagerModules.default ];

  home.packages = with pkgs; [
    spicetify-cli
    spicetify-themes
  ];
}
