{... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../profiles/desktop
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "/dev/vda";

}
