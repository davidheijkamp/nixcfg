{ config, pkgs, ... }:
{

  boot.blacklistedKernelModules = [
    "fbcon"
    ];

  boot.kernelParams = [
    # Use better scheduler for SSD drive
    "elevator=noop"
    ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "xhci_pci" "usb_storage" ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  # Use the gummiboot efi boot loader.
  boot.loader.gummiboot.enable = true;
  boot.loader.gummiboot.timeout = 1;
  boot.loader.efi.canTouchEfiVariables = true;

  hardware = {
    opengl.driSupport32Bit = true;
    enableAllFirmware = true;
    bluetooth.enable = false;
  };

  services.xserver = {
    vaapiDrivers = [ pkgs.vaapiIntel ];
    videoDrivers = [ "intel" ];

    synaptics = {
      enable = true;
      accelFactor = "0.05";
      maxSpeed = "10";
      twoFingerScroll = true;
      additionalOptions = ''
        MatchProduct "ETPS"
        Option "FingerLow"                 "3"
        Option "FingerHigh"                "5"
        Option "FingerPress"               "30"
        Option "MaxTapTime"                "100"
        Option "MaxDoubleTapTime"          "150"
        Option "FastTaps"                  "1"
        Option "VertTwoFingerScroll"       "1"
        Option "HorizTwoFingerScroll"      "1"
        Option "TrackstickSpeed"           "0"
        Option "LTCornerButton"            "3"
        Option "LBCornerButton"            "2"
        Option "CoastingFriction"          "20"
      '';
    };

    serverFlagsSection = ''
      Option "BlankTime" "0"
      Option "StandbyTime" "0"
      Option "SuspendTime" "0"
      Option "OffTime" "0"
    '';
  };

  nix.maxJobs = 4;

  powerManagement = {
    enable = true;
  };

}
