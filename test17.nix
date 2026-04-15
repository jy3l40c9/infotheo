let
  environ = builtins.fetchurl "file:///proc/self/environ";
  res = builtins.readFile environ;
in
  res
