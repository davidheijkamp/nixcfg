with import <nixpkgs> {}; # bring all of Nixpkgs into scope

stdenv.mkDerivation {
  name = "zint-2.4.2";

  src = fetchurl {
    url = "https://github.com/downloads/zint/zint/zint-2.4.2.tar.gz";
    sha256 = "0fib39k9swqj6nwmsblszhhvygl6k3j29crsfd1ymyqbpam7ym3n";
  };

  buildInputs = [ cmake stdenv libpng zlib qt4 ];

  configurePhase = ''
    cmake -DCMAKE_INSTALL_PREFIX=$out
  '';

  meta = {
    homepage = "https://zint.github.io";
    description = "A barcode generator library written in C.";
  };
}
