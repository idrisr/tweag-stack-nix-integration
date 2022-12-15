let pkgs = import <nixpkgs> { };
in pkgs.mkShell {

  buildInputs = [ pkgs.stack ];
  NIX_PATH = "nixpkgs=" + pkgs.path;
  shellHook = ''
    set -o vi
    alias v=vim
  '';
}
