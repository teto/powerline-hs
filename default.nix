{pkgs ?  import <nixpkgs> {} }:

with pkgs;

haskellPackages.callPackage ./powerline-hs.nix {}
