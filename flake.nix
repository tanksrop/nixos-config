{
  description = "just a Nix setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nixpkgs, home-manager, ... }:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs self nixpkgs home-manager;
        };

        modules = [
          ./hosts/desktop
        ];
      };

      vm = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs self nixpkgs home-manager;
        };

        modules = [
          ./hosts/vm
        ];
      };
    };
  };
}
