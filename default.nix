{ lib
, lilypond
, makeFontsConf
, stdenv
, symlinkJoin
, writeText
, loglevel ? "info"
}:
let
  version = builtins.readFile ./VERSION;

  meta = with lib; {
    description = "Scores of singles by EPBD";
    homepage = "https://github.com/epbdband/singles";
    maintainers = with maintainers; [ yurrriq ];
    license = licenses.cc-by-nc-sa-40;
  };

  Makefile = writeText "Makefile" (builtins.readFile ./song.mk);

  inherit (lib) optionalString;

  mkScore = attrs@{ songName, pdfName ? songName, ... }:
    stdenv.mkDerivation
      (
        attrs // {
          pname = "epbd-singles-${songName}";
          inherit pdfName songName version;
          src = ./. + "/songs/${songName}";

          FONTCONFIG_FILE = makeFontsConf { fontDirectories = [ ]; };

          nativeBuildInputs = [
            lilypond
          ];

          enableParallelBuilding = true;

          buildPhase = ''
            install -m644 ${Makefile} ./Makefile
            install -dm755 $out
          '';

          installFlags = [
            "job-count=$${NIX_BUILD_CORES:-1}"
            "loglevel=${loglevel}"
            "pdfName=${pdfName}"
            "prefix=${placeholder "out"}"
          ];

          postInstall = optionalString (loglevel != "debug") ''
            rm -frv $out/*.log
          '';

          meta = meta // {
            description = "${songName} score by EPBD";
          };
        }
      );
in
symlinkJoin rec {
  name = "epbd-singles-${version}";
  inherit meta version;
  enableParallelBuilding = true;
  passthru = with lib;
    listToAttrs (map (song: nameValuePair (getName song) song) paths);
  paths = with builtins;
    map (songName: mkScore { inherit songName; })
      (attrNames (readDir ./songs));
}
