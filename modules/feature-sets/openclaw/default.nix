{ config, pkgs, ... }:

{
  services.ollama = {
    enable = true;

    package = pkgs.ollama.overrideAttrs (old: {
      buildInputs = old.buildInputs ++ [
        pkgs.cudaPackages.cudatoolkit
      ];
    });
  };
}
