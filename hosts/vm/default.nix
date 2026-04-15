{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../profiles/desktop
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  services.spice-vdagentd.enable = true;

  environment.systemPackages = with pkgs; [
    spice-vdagent
    wl-clipboard
  ];
}
