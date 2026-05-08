{ config, pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.ollama.override {
      acceleration = "cuda";
    })
  ];
}
