{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    utils.url = "github:numtide/flake-utils";
    fenix.url = "github:nix-community/fenix";
  };
  outputs = { nixpkgs, utils, fenix, ... }: utils.lib.eachDefaultSystem (system: let
    rust = fenix.packages.${system};
    rustc = rust.combine [
      rust.stable.rustc
      rust.targets.wasm32-unknown-unknown.stable.rust-std
      rust.stable.cargo
    ];
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShells.default = pkgs.mkShell {
      packages = [
        pkgs.wasm-pack
        pkgs.bun
        pkgs.nodejs_18
        rustc
        pkgs.playwright-test
      ];
    };
  });
}
