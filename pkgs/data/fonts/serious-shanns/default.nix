{ stdenv, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "serious-shanns";
  version = "4.0.1";

  src = fetchFromGitHub {
    owner = "kaBeech";
    repo = "serious-shanns";
    rev = "v${version}";
    sha256 = "1a3lirb9rx01qjginx091rwpwhdpvv74q5rsy0pn8az9lszppj7x";
  };

  installPhase = ''
    install -D -m 444 SeriousShanns/otf/* -t $out/share/fonts/otf
    install -D -m 444 SeriousShanns/nerdfont/* -t $out/share/fonts/otf
  '';

  meta = with stdenv.lib; {
    description = ''
A legible monospace font for playful professionals. Comic Sans for hackers
    '';
    longDescription = ''
Serious Shanns is a legible monospaced font made to resemble the classic Comic
Sans font we all know and love. It is designed to be suitable for use in a
professional coding environment while retaining the playfulness of the original

This font is a fork of dtinth's Comic Mono, which in turn is a fork of Shannon
Miwa's Comic Shanns (version 1). See also Jesús González's Comic Shanns Mono
    '';
    homepage = "https://github.com/kaBeech/serious-shanns";
    license = licenses.ofl;
    platforms = platforms.all;
    maintainers = with maintainers; [ kaBeech ];
  };
}
