{ lib, stdenv, fetchFromGitHub, ... }@inputs:

stdenv.mkDerivation rec {
  __contentAddressed = true;
  pname = "sysfo";
  version = "1.1";

  # src = inputs.sysfo;
  src = fetchFromGitHub {
    owner = "ethancedwards8";
    repo = "sysfo";
    rev = "v${version}";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  buildPhase = ''
    make CC=$(cc)
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
