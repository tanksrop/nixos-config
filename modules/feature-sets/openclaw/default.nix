{ config, pkgs, ... }:

{
  nixpkgs.config.permittedInsecurePackages = [
    "openclaw-2026.4.11"
  ];

  services.ollama = {
    enable = true;
    package = pkgs.ollama-cuda;
  };

  environment.systemPackages = with pkgs; [
    openclaw
  ];
}
