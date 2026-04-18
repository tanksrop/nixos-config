{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    sunshine
    gamescope
  ];
programs.steam = {
  enable = true;
};

}
