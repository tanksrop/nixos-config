{ inputs, pkgs, ... }:

{
  imports = [


    ../../modules/common
    ../../modules/feature-sets/cli-essentials
    inputs.spicetify-nix.nixosModules.spicetify
    ../../modules/feature-sets/gui-essentials
    ../../modules/feature-sets/communication
    ../../modules/feature-sets/plasma
    ../../modules/feature-sets/niri
    ../../modules/feature-sets/gaming
  ];
}
