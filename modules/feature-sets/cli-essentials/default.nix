{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    curl
    wget
    neovim
    fastfetch
    sl
  ];
}
