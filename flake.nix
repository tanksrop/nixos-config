{
  description = "just a Nix setup";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    openclaw.url = "github:Scout-DJ/openclaw-nix";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    zen-browser.url = "github:youwen5/zen-browser-flake";
    zen-browser.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, zen-browser, ... }:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      desktop = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit self nixpkgs home-manager zen-browser;
        };

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
