{pkgs, ...}: {
  imports = [
    ./modules/packages.nix
    ./scripts/blocks.nix
    ./scripts/nx-switch.nix
    ./scripts/vault.nix
  ];

  packages = with pkgs; {
    linux = [
      (mpv.override {scripts = [mpvScripts.mpris];})
      spotify
      libnotify
      # linux-wifi-hotspot
      # gnome-secrets
      fragments
      # figma-linux
      # yabridge
      # yabridgectl
      # wine-staging
      modrinth-app 
      nodejs
    ];
    cli = [
      bat
      eza
      fd
      ripgrep
      fzf
      # lazydocker
      lazygit
    ];
  };
}
