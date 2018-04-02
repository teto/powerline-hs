{ mkDerivation, aeson, base, basic-prelude, bytestring, containers
, criterion, directory, download, file-embed, filepath, git-embed
, glob-posix, MissingH, network, network-info, optparse-applicative
, process, rainbow, safe, scientific, stdenv, strict, tasty
, tasty-hunit, template-haskell, text, time, transformers, unix
, unordered-containers, vector, xdg-basedir, haskell
}:
mkDerivation {
  pname = "powerline-hs";
  version = "0.1.0.1";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base basic-prelude bytestring containers directory download
    file-embed filepath git-embed 
              (haskell.lib.dontCheck glob-posix)
    network network-info
    optparse-applicative process rainbow safe scientific strict
    template-haskell text time transformers unix unordered-containers
    vector xdg-basedir
  ];
  testHaskellDepends = [
    base basic-prelude process tasty tasty-hunit
  ];
  benchmarkHaskellDepends = [ base criterion MissingH process ];
  doCheck = false;
  homepage = "https://github.com/rdnetto/powerline-hs";
  description = "Powerline-compatible shell prompt generator";
  license = stdenv.lib.licenses.asl20;
}
