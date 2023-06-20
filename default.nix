{ pkgs ? import <nixpkgs> {} }:

with pkgs;

let
  dotfilesDir = "/path/to/your/dotfiles";
  destinationDir = "/home/your-username";
in
stdenv.mkDerivation rec {
  name = "dotfile-manager";
  buildCommand = ''
    cp -r ${dotfilesDir} ${destinationDir}
  '';
  buildInputs = [ coreutils ];
}
