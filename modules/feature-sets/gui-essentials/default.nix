{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    zen-browser
    spotify
  ];
}
