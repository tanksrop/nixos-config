
{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.spicetify-nix.nixosModules.default
  ];

  environment.systemPackages = [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.spotify
  ];

  services.spicetify.enable = true;

  services.spicetify.theme = "Catppuccin";
  services.spicetify.enableExtensions = true;
}
