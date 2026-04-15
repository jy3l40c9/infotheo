{ bundle ? "9.0", job ? "rocq-core", src ? ./., ... }@args:
let
  auto_path = fetchGit {
    url = "https://github.com/coq-community/coq-nix-toolbox.git";
    ref = "master";
    rev = import .nix/coq-nix-toolbox.nix;
  };
  auto = import auto_path ({ inherit src; } // args);
in
  if builtins.isAttrs auto then builtins.attrNames auto
  else if builtins.isFunction auto then "auto is a function"
  else "auto is something else"
