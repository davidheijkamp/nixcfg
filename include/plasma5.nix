{ config, pkgs, ... } :
{

  services.xserver = {
    enable = true;
    layout = "us,nl";

    desktopManager = {
      kde5.enable = true;
    };

    displayManager = {
      sddm.enable = true;
    };
  };

  programs.ssh.startAgent = true;

  # Enable PulseAudio
  hardware.pulseaudio.enable = true;

  services.printing = {
    enable = true;
  };

}
