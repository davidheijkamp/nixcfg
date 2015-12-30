{ config, pkgs, ... }:
{

  # List packages installed in system profile. To search by name, run:
  # $ nix-env -qaP | grep wget
  environment.systemPackages = with pkgs; [
    firefoxWrapper
    chromium
    tomahawk
    beets
    atom
    kde5.kwrited
    kde5.ksnapshot
    scribus
    ghostscript
    transmission
  ];

  nixpkgs.config = {
    allowUnfree = true;
    chrome = {
      jre = true;
      enableAdobeFlash = true;
    };

    firefox = {
      enableGoogleTalkPlugin = true;
      enableAdobeFlash = false;
    };

    chromium = {
      enablePepperFlash = true; # Chromium removed support for Mozilla (NPAPI) plugins so Adobe Flash no longer works
      enablePepperPDF = true;
    };
  };

}
