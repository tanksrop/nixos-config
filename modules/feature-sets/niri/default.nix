{ config, pkgs, lib, home-manager, ... }:

let
  hmDesktop = import ./home.nix;
in
{
  programs.niri.enable = true;

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users = lib.mapAttrs (_: _: hmDesktop)
      (lib.filterAttrs (_: u: u.isNormalUser or false) config.users.users);
  };
}
