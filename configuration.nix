# the system.  Help is available in the configuration.nix(5) man page
# or the NixOS manual available on virtual console 8 (Alt+F8).

{ config, pkgs, ... }:

rec {
  require = [
    ./include/samsung-np900x3c.nix
    ./include/fs.nix
    ./include/users.nix
    ./include/base.nix
    ./include/plasma5.nix
    ./include/apps.nix
    ./include/fonts.nix
  ];

  networking.hostName = "skootrekenaar";
  time.timeZone = "Europe/Amsterdam";
  system.stateVersion = "15.09";

}
