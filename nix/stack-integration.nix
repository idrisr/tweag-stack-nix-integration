# from https://www.tweag.io/blog/2022-06-02-haskell-stack-nix-shell/
let
  sources = import ./source.nix;
  pkgs = sources.nixpkgs;

  # See https://docs.haskellstack.org/en/stable/nix_integration/#using-a-custom-shellnix-file
in { ghc }:

pkgs.haskell.lib.buildStackProject {
  inherit ghc;
  name = "haskell-stack-nix";
  # System dependencies needed at compilation time
  buildInputs = with pkgs; [ postgresql zlib ];
}
