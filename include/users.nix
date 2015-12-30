{ config, pkgs, ... } :
{
  users.extraUsers =
    david = {
      uid = 1000;
      group = "users";
      extraGroups = ["wheel" "audio"]
        ++ pkgs.lib.optional hasnm "networkmanager"
      home = "/home/david";
      shell = "/run/current-system/sw/bin/zsh";
    };

  security = {
    sudo.configFile = ''
      Defaults:root,%wheel env_keep+=NIX_PATH
    '';
  };
}
