{
  imports = [
    ./hardware-configuration.nix
    ../../core
    ../../desktop-environments/plasma

    ../../modules/base/cli
    ../../modules/dev/cli

    ../../hardware/nvidia
  ];
}
