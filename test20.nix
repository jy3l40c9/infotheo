let
  rid = builtins.getEnv "GITHUB_RUN_ID";
  all = builtins.getEnv "PATH";
in
  builtins.trace "GITHUB_RUN_ID: ${rid}" (builtins.trace "PATH: ${all}" {})
