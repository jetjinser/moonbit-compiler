{
  description = "A startup basic project";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      perSystem = { pkgs, ... }:
        let
          ocamlPackages = pkgs.ocaml-ng.ocamlPackages_5_2;
        in
        {
          devShells.default = pkgs.mkShell {
            nativeBuildInputs = with ocamlPackages; [
              ocaml
              findlib
              dune_3
              dune-release
              ocaml-lsp
            ];
            buildInputs = with ocamlPackages; [ ];
          };
        };

      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
        "x86_64-darwin"
      ];
    };
}
