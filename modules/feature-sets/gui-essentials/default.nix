{ config, pkgs, inputs, ... }:

{
  # system packages
  environment.systemPackages = [
    # Zen browser flake package
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    # Spotify needed for Spicetify
    pkgs.spotify
  ];

  # Import Spicetify module
  imports = [
    inputs.spicetify-nix.nixosModules.default
  ];

  # Enable Spicetify
  services.spicetify.enable = true;

  # Configure theme and extensions
  services.spicetify.theme = "Catppuccin";
  services.spicetify.enableExtensions = true;

  # Optional: path to custom theme for transparency
  services.spicetify.customThemePath = "/home/ben/.config/spicetify/Themes/Catppuccin";

  # You can also override the CSS in user.css inside that folder for transparency
}
