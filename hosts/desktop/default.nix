{
  imports = [
    ./hardware-configuration.nix
    ../../profiles/desktop
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 30;
  boot.loader.efi.canTouchEfiVariables = true;

}
