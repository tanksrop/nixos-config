{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.ben = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    initialPassword = "changeme";

    shell = pkgs.fish;
  };
}
