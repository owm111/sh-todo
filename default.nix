{ pkgs ? import <nixpkgs> {} }:

pkgs.stdenv.mkDerivation {
  pname = "sh-todo";
  version = "0.0.0";
  src = ./.;
  installPhase = "install -Dvm 755 todo $out/bin/todo";
}
