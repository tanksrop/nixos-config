{ ... }:

{
  home.stateVersion = "24.05";

  imports = [
    ./apps/kitty.nix
    ./apps/waybar.nix
    ./apps/fuzzel.nix
    ./apps/mako.nix
    ./tools.nix
  ];
}
