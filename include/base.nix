{ config, pkgs, ... }:
{

  services.ntp = {
    enable = true;
    servers = [ "0.pool.ntp.org" "1.pool.ntp.org" "2.pool.ntp.org" ];
  };

  networking = {
    networkmanager.enable = true;
  };

  # Programs
  programs.zsh.enable = true;

  services.journald = {
    extraConfig = ''
      SystemMaxUse=50M
    '';
  };

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    zsh
    vim
    screen
    htop
    wget
    git
    smartmontools
    manpages
    psmisc
    acpid
    upower
    tcpdump
    pmutils
    file
    cpufrequtils
    zip
    unzip
  ];

}
