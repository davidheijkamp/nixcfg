{ config, pkgs, ... }:
{

  fileSystems = [
    { mountPoint = "/";
      device = "/dev/disk/by-label/nixos";
      options = "defaults,relatime,discard";
    }
    { mountPoint = "/home";
      device = "/dev/disk/by-label/home";
      options = "defaults,relatime,discard";
    }
  ];

  swapDevices = [
    { device = "/dev/disk/by-label/swap"; }
  ];

}
