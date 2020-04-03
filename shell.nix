let
  nixpkgs = import <nixpkgs> {
    config.allowUnfree = false;
    overlays = [ ];
  };
  unstable = import <unstable> {
    config.allowUnfree = true;
    overlays = [ ];
  };
in
nixpkgs.mkShell {
  buildInputs = [
    unstable.flink
    unstable.jdk11
    nixpkgs.gradle
  ];
  shellHook = ''
        '';
}

