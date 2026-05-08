{
  users.users.ben = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    initialPassword = "changeme";

    shell = pkgs.fish;
  };
  programs.fish.enable = true;
}
