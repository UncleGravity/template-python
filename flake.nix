{
  description = "A simple Python project with Poetry";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            python3
            uv
            # Add any other tools you might need, e.g.:
            # git
            # pre-commit
          ];

          # Force uv to use nix python
          shellHook = ''
            export UV_PYTHON_PREFERENCE="only-system"
            export UV_PYTHON="${pkgs.python3}"
          '';
        };
      });
}
