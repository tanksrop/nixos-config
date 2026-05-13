{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.spicetify-nix.nixosModules.spicetify
  ];

  environment.systemPackages = [
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  programs.spicetify = {
    enable = true;
    enabledExtensions = with inputs.spicetify-nix.legacyPackages.${pkgs.stdenv.hostPlatform.system}.extensions; [
      adblockify
      hidePodcasts
      shuffle
    ];
    colorScheme = "mocha";
  };
}
