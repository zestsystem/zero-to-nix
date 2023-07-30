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
    packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

    packages.x86_64-linux = {
      default = self.packages.x86_64-linux.hello;
      thing1 = {
        thing2 = nixpkgs.legacyPackages.x86_64-linux.ripgrep;
      };
    };

    packages.aarch64-darwin = {
      default = nixpkgs.legacyPackages.aarch64-darwin.hello;
      thing1 = {
        thing2 = nixpkgs.legacyPackages.aarch64-darwin.ripgrep;
      };
    };
  };
}
