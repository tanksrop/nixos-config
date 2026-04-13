{
  imports = [
    ./hardware-configuration.nix
    ../../core
    ../../desktop-environments/plasma
    ../../modules/cli-essential
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";
}
