# Setup for DYMO Cups drivers, not finished!
with import <nixpkgs> {}; # bring all of Nixpkgs into scope

stdenv.mkDerivation rec {
  name = "dymo-cups-drivers-1.0.1";
  src = fetchurl {
    url = "https://github.com/xcross/dymo-cups-drivers//archive/d99018d94540e61afe32c79e58ed95db1db63b68.tar.gz";
    sha256 = "0hlkahn2l3jn6p51kvfg70irh5jaschchghkv1lcasxbqy4ymzq9";
  };
  buildInputs = [cups];
}
