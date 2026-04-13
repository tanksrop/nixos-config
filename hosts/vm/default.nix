{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../core
    ../../desktop-environments/plasma
    ../../modules/cli-essential
    ../../modules/gui-essential
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

  services.spice-vdagentd.enable = true;
  services.spice-vdagent.enable = true;

  environment.systemPackages = with pkgs; [
    spice-vdagent
    wl-clipboard
  ];
}
