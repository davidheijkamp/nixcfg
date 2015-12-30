{ config, pkgs, ... } :
{

  services.xserver = {
    enable = true;
    layout = "us,nl";
    startOpenSSHAgent = true;

    desktopManager = {
      kde5.enable = true;
    };

    displayManager = {
      sddm.enable = true;
    };
  };

  # Enable PulseAudio
  hardware.pulseaudio.enable = true;

  services.printing = {
    enable = true;
  };

}
