{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = [
    pkgs.gcc # For C and C++ compilers
    pkgs.gcc11 # Optional: GCC 11 for modern C++ support
    pkgs.mono # For C# support (Mono runtime and compiler)
    pkgs.raylib # Raylib library for C/C++ game development
    pkgs.libnotify # For notify-send
    pkgs.gnumake
    pkgs.cmake # CMake for C/C++ project management and building
    pkgs.zlib # zlib for compression
    pkgs.openssl # OpenSSL for secure communications
    pkgs.nix-ld # nix-ld for linking with Nix
  ];

  shellHook = ''
    # Show a notification when the shell is activated
    notify-send -i nix-snowflake "shell.nix" "shell has been activated"
  '';
}
