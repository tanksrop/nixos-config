{ config, pkgs, inputs, ... }:

{
  # Import Spicetify module
  imports = [
    inputs.spicetify-nix.nixosModules.default
  ];

  # System packages
  environment.systemPackages = [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.spotify
  ];

  # Enable Spicetify
  services.spicetify.enable = true;
  services.spicetify.theme = "nightlight";
  services.spicetify.enableExtensions = true;
}
