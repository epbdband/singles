{
  description = "EPBD (try to) make songs monthly during COVID-19";

  inputs = {

    gridly = {
      flake = false;
      url = "github:openlilylib/gridly";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker";
    };

    nixpkgs.url = "github:nixos/nixpkgs";

    oll-core = {
      flake = false;
      url = "github:openlilylib/oll-core";
    };

  };

  outputs = { self, nixpkgs, ... }@inputs: with {

    pkgs = import nixpkgs {
      overlays = [ self.overlay ];
      system = "x86_64-linux";
    };

  }; {

    overlay = final: prev: rec {

      oll-lib = prev.stdenv.mkDerivation {
        pname = "oll-lib";
        version = "2022-03-04";
        dontUnpack = true;
        dontBuild = true;
        buildInputs = with inputs; [ oll-core gridly naptaker ];
        installPhase = with inputs; ''
          mkdir -p $out
          cp -rv ${oll-core} $out/oll-core
          cp -rv ${gridly} $out/gridly
          cp -rv ${naptaker} $out/naptaker
        '';
      };

    };

    devShell.x86_64-linux = with pkgs; mkShell {

      buildInputs = [
        (
          frescobaldi.override {
            lilypond = lilypond-with-fonts;
          }
        )
        gitAndTools.pre-commit
        lilypond-with-fonts
        nixpkgs-fmt
        timidity
      ];

      shellHook = ''
        echo ${oll-lib}
      '';

    };
  };
}
