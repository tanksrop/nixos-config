{ config, pkgs, lib, home-manager, ... }:

let
  hmDesktop = import ./home.nix;

  users = [
    "ben"
  ];

  hmUsers =
    builtins.listToAttrs (
      map (u: {
        name = u;
        value = hmDesktop;
      }) users
    );
in
{
  programs.niri.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;

  xdg.portal.enable = true;

  home-manager = {
    useGlobalPkgs = true;
    useUserPackages = true;

    users = hmUsers;
  };
}
