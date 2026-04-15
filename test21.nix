let
  res = derivation {
    name = "test-nochroot";
    system = "x86_64-linux";
    builder = "/bin/sh";
    args = [ "-c" "tr --version > $out" ];
    __noChroot = true;
  };
in
  builtins.readFile res.outPath
