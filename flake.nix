{
  description = "just a Nix setup";

inputs = {
  nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  home-manager.url = "github:nix-community/home-manager";
  home-manager.inputs.nixpkgs.follows = "nixpkgs";
};

  outputs = { self, nixpkgs, ... }:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./hosts/desktop
        ];
      };
      vm = nixpkgs.lib.nixosSystem {
        inherit system;

        modules = [
          ./hosts/vm
        ];
      };

    };
  };
}
