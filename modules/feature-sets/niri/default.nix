{ config, pkgs, lib, home-manager, ... }:

let
  hmDesktop = import ./home.nix;

  normalUsers =
    lib.attrNames (
      lib.filterAttrs (_: u: u.isNormalUser or false)
        config.users.users
    );

  hmUsers =
    builtins.listToAttrs (
      map (u: {
        name = u;
        value = hmDesktop;
      }) normalUsers
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
