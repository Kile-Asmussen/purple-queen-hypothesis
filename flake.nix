{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        overlays = [ ];
        pkgs = import nixpkgs { inherit system overlays; };
      in
      {
        devShells.default =
          with pkgs;
          mkShell {
            name = "project-shell";
            nativeBuildInputs = [
              bashInteractive
            ];
            packages = [
              jq
              fixjson
            ];
          };
      }
    );
}
