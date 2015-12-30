{ config, pkgs, ... } :
{

  fonts = {
    fontconfig.enable = true;
    enableFontDir = true;
    enableCoreFonts = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs ; [
      liberation_ttf
      ttf_bitstream_vera
      dejavu_fonts
      ubuntu_font_family
      unifont
      freefont_ttf
    ];
  };

}
