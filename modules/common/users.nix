{
  users.users.ben = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" ];
    initialPassword = "changeme";

    shell = config.programs.fish.package;
  };
  programs.fish.enable = true;
}
