{ pkgs, inputs, ... }:

let
  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
in {
  environment.systemPackages = with pkgs; [
    firefox
  ];

  programs.spicetify = {
    enable = true;

    enabledExtensions = with spicePkgs.extensions; [
      fullAppDisplay
      popupLyrics
    ];
  };
}
