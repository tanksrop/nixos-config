{
  description = "just a Nix setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations.desktop = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        ./hosts/desktop
      ];
    };
  };
}
