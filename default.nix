{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> { inherit system; } }:

rec {

  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;
  hmModules = import ./hm-modules;
  ndModules = import ./nd-modules;

  hello-nur = pkgs.callPackage ./pkgs/hello-nur { };

  firefox-addons =
    pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/firefox-addons { });

  sysfo = pkgs.callPackage ./pkgs/sysfo { };

}
