pkgs: pkgsOld:
{
  rootProjectDir      = toString ../..;
  readRevision        = pkgs.callPackage ./readRevision {};
  easy-purescript-nix = pkgs.callPackage ./easy-purescript-nix {};
}
