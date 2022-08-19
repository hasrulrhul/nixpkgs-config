{ pkgs ? import <nixpkgs> { } }:
# fungsi jalankan make shell mkShell 
pkgs.mkShell {
  name = "project-name-nix-shell";

  # library atau defendensi yang project butuhkan
  buildInputs = with pkgs;[
    go
  ];

  shellHook = ''
    # menulis shellscript
    echo "Selamat datang di nix shell - project-nix-shell"
  '';
}