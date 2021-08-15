{
  inputs.nixpkgs.url = "nixpkgs/release-21.05";
  inputs.utils.url = "github:numtide/flake-utils";
  outputs = { self, nixpkgs, utils }: utils.lib.eachDefaultSystem (system: let
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    devShell = pkgs.mkShell {
      buildInputs = [ pkgs.openscad pkgs.pandoc ];
    };
  });
}
