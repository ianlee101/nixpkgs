{ lib, stdenv, fetchFromGitHub}:

stdenv.mkDerivation rec {
  pname = "telseq";
  version = "bug fix release";

  src = fetchFromGitHub {
    owner = "zd1";
    repo = pname;
    rev = "v${version}";
    sha256 = "sha256-HaiZmWU6akHXJVWBmCvkG2E61NDrAP7UIxx9DNCEZqE=";
  };

  buildInputs = [ ];

  meta = with lib; {
    description = "A software that estimates telomere length from whole genome sequencing data (BAMs).";
    license = licenses.gpl3;
    homepage = "http://bowtie-bio.sf.net/bowtie2";
    maintainers = with maintainers; [ jbedo ];
    platforms = platforms.all;
  };
}