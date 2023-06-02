{ lib, stdenv, fetchFromGitHub}:

stdenv.mkDerivation rec {
  pname = "telseq";
  version = "bug fix release";

  src = fetchFromGitHub {
    owner = "zd1";
    repo = pname;
    rev = "v${version}";
    sha256 = "0l2nkwhif96f51f4amnlf414lhl4rv9vh8iffyp431v6s28gsr90";
  };

  buildInputs = [ ];

  meta = with lib; {
    description = "A software that estimates telomere length from whole genome sequencing data (BAMs).";
    license = licenses.gpl3;
    homepage = "git://github.com/zd1/telseq.git";
    maintainers = with maintainers; [ jbedo ];
    platforms = platforms.all;
  };
}
