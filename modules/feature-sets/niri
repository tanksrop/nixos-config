{ config, pkgs, ... }:

{
  programs.niri.enable = true;

  environment.systemPackages = with pkgs; [
    kitty
    fuzzel
    waybar
    mako
    nautilus
    wl-clipboard
    grim
    slurp
    swaylock
    swayidle
    playerctl
  ];

  # Audio (modern standard)
  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  security.rtkit.enable = true;

  # Portals (important for browsers, file pickers, etc.)
  xdg.portal.enable = true;

  # Fonts (don’t skip this)
  fonts.packages = with pkgs; [
    dejavu_fonts
  ];
}
