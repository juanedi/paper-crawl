let
  sources = import ./nix/sources.nix;
  niv = import sources.niv { };
  pkgs = import sources.nixpkgs { };
  # pkgs-intel = import sources.nixpkgs { localSystem = "x86_64-darwin"; };
in
pkgs.mkShell {
  buildInputs = [
    niv.niv

    pkgs.nodejs
  ];
}
