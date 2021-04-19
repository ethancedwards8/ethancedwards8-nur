{ system ? builtins.currentSystem, pkgs ? import <nixpkgs> { inherit system; }, inputs, ... }:

{

  lib = import ./lib { inherit pkgs; };
  modules = import ./modules;
  overlays = import ./overlays;
  hmModules = import ./hm-modules;
  ndModules = import ./nd-modules;

  dmenu = pkgs.callPackage ./pkgs/dmenu { inherit inputs; };

  firefox-addons =
    pkgs.recurseIntoAttrs (pkgs.callPackage ./pkgs/firefox-addons { });

  hello-nur = pkgs.callPackage ./pkgs/hello-nur { };

  st = pkgs.callPackage ./pkgs/st { inherit inputs; };

  sysfo = pkgs.callPackage ./pkgs/sysfo { inherit inputs; };
}
