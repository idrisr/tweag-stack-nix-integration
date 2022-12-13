let pkgs = import <nixpkgs> { };
in pkgs.mkShell {

  buildInputs = [ pkgs.stack ];
  shellHook = ''
    set -o vi
    alias v=vim
  '';
}
