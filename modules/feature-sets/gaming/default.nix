{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    moonlight
    gamescope
  ];
programs.steam = {
  enable = true;
};

}
