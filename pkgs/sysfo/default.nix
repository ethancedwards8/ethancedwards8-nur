{ lib, stdenv, fetchFromGitHub, inputs, ... }:

stdenv.mkDerivation {
  pname = "sysfo";
  version = "1.0";

  src = inputs.sysfo;

  buildPhase = ''
    make
  '';

  checkPhase = ''
    $out/bin/sysfo -V > /dev/null
  '';

  installPhase = ''
    mkdir -p $out/bin
    cp sysfo $out/bin/sysfo
  '';

  meta = with lib; {
    description = "A neofetch inspired project written in C to give you information about your system";
    homepage    = "https://github.com/ethancedwards8/sysfo";
    license     = licenses.gpl2Plus;
    platforms   = platforms.all;
    maintainers = with maintainers; [ ethancedwards8 ];
  };
}
