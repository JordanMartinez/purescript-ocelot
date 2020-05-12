{
  pkgs ? import ./nix/pkgs.nix
}:

pkgs.mkShell rec {
  buildInputs = with pkgs; [
    pkgs.path # nixpkgs path, not dependency, add nixpkgs source to gc-root and prevent it to be gc collected
    # rootYarnModules

    gnumake
    git
    nix

    nodejs
    yarn

    # for building c++ extensions (from https://matrix.ai/2018/03/24/developing-with-nix/)
    nodePackages.node-gyp
    nodePackages.node-gyp-build
    nodePackages.node-pre-gyp

    easy-purescript-nix.spago
    easy-purescript-nix.purs
    easy-purescript-nix.purty # find ./packages/client/src -name "*.purs" -exec purty --write {} \;
    easy-purescript-nix.spago2nix
  ];

  HISTFILE = toString ./.bash_hist;

  # export PATH="${pkgs.rootProjectDir}/node_modules/.bin/:/home/srghma/projects/purescript/.stack-work/install/x86_64-linux-nix/ec68e55b45064aeed36ab3915e14fec1f60a3e92e42a196c7c6c1d57d1e2655d/8.6.5/bin/:$PATH"
  # shellHook = ''
  #   export PATH="${pkgs.rootProjectDir}/node_modules/.bin/:$PATH"

  #   if [[ -d node_modules || -L node_modules ]]; then
  #     echo "./node_modules is present. Removing."
  #     rm -rf node_modules
  #   fi
  # '';
}
