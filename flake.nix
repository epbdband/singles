{
  description = "EPBD (try to) make songs monthly during COVID-19";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";

    git-hooks-nix.url = "github:cachix/git-hooks.nix";

    gridly = {
      flake = false;
      url = "github:openlilylib/gridly";
    };

    naptaker = {
      flake = false;
      url = "github:naptaker/naptaker/lilypond-2.24";
    };

    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    oll-core = {
      flake = false;
      url = "github:openlilylib/oll-core";
    };

    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs = inputs@{ flake-parts, nixpkgs, self, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      flake = {
        overlays.default = _final: prev: rec {
          myLilypond = prev.lib.appendToName "with-fonts-and-oll" (prev.symlinkJoin {
            inherit (prev.lilypond) meta name version;

            paths = [ prev.lilypond ] ++ prev.openlilylib-fonts.all;

            nativeBuildInputs = [ prev.makeWrapper ];

            postBuild = ''
              for p in $out/bin/*; do
                  wrapProgram "$p" \
                      --add-flags "--include=${oll-lib}" \
                      --set LILYPOND_DATADIR "$out/share/lilypond/${prev.lilypond.version}"
              done
            '';
          });

          oll-lib = prev.stdenv.mkDerivation {
            pname = "oll-lib";
            version = "2025-06-05";
            dontUnpack = true;
            dontBuild = true;
            installPhase = with inputs; ''
              mkdir -p $out
              cp -rv ${oll-core} $out/oll-core
              cp -rv ${gridly} $out/gridly
              cp -rv ${naptaker} $out/naptaker
            '';
          };
        };
      };

      imports = [
        inputs.git-hooks-nix.flakeModule
        inputs.treefmt-nix.flakeModule
      ];

      systems = [
        "x86_64-linux"
      ];

      perSystem = { config, pkgs, system, ... }: {
        _module.args.pkgs = import nixpkgs {
          config.allowUnfreePredicate = pkg:
            nixpkgs.lib.hasPrefix "epbd-singles" (nixpkgs.lib.getName pkg);
          overlays = [
            self.overlays.default
          ];
          inherit system;
        };

        devShells.default = with pkgs; mkShell {
          LILYPOND_SHARE_DIR = "${myLilypond}/share";

          inputsFrom = [
            config.pre-commit.devShell
          ];

          nativeBuildInputs = [
            # (
            #   frescobaldi.override {
            #     lilypond = myLilypond;
            #   }
            # )
            myLilypond
            timidity
          ];
        };

        packages =
          let
            epbd-singles = pkgs.callPackage ./. {
              lilypond = pkgs.myLilypond;
            };
          in
          {
            default = epbd-singles;
            inherit epbd-singles;
            inherit (pkgs) myLilypond oll-lib;
          } // epbd-singles.passthru;

        pre-commit.settings.hooks = {
          convco.enable = true;
          editorconfig-checker.enable = true;
          treefmt.enable = true;
        };

        treefmt = {
          programs = {
            deadnix.enable = true;
            nixpkgs-fmt.enable = true;
            prettier.enable = true;
          };
        };
      };
    };
}
