{pkgs ? import <nixpkgs> {}}:

with import <nixpkgs> {};

mkShell {
  buildInputs = [
    autoconf
    automake
    buildPackages.ruby_3_0
    libiconv
    libtool
    libxml2
    libxslt
    ruby_3_0
  ];

  # Keep gems in the project dir to stop projects stomping all over each other's gems
  GEM_HOME = "${toString ./.}/ruby_gems";
}
