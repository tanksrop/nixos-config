{ pkgs, ... }:

{
  home.packages = with pkgs; [
    grim
    slurp
    wl-clipboard
    playerctl
    swaylock
    swayidle
    nautilus
  ];
}
