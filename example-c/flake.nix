{
  description = "Example C package";
  inputs = {
    nixpkgs = {
      url = "github:nixos/nixpkgs?ref=nixos-22.11";
    };
  };

  outputs = {
    self,
    nixpkgs,
  }: {
    packages.aarch64-darwin = {
      default = nixpkgs.legacyPackages.aarch64-darwin.hello;
      thing1 = {
        thing2 = nixpkgs.legacyPackages.aarch64-darwin.ripgrep;
      };
    };
  };
}
