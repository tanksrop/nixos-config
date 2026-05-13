{ config, pkgs, inputs, ... }:

{
  # system packages
  environment.systemPackages = [
    # Zen Browser flake package
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    # Spotify needed for Spicetify
    pkgs.spotify
  ];

  # Import Spicetify module
  imports = [
    inputs.spicetify-nix.nixosModules.default
  ];

  # Enable Spicetify with default Nightlight theme
  services.spicetify.enable = true;
  services.spicetify.theme = "Nightlight";
  services.spicetify.enableExtensions = true;
}
