let
  pkgs = import <nixpkgs> {};
in
  pkgs.coreutils.outPath
