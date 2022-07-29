with import <nixpkgs> {} ;
pkgs.mkShell {
  buildInputs = with pkgs; [
    libressl_3_5
#    ponyc
#    pony-corral
#    file
#    pkg-config
  ];
}
