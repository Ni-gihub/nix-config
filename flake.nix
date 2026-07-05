{
  description = "Nakaoku's NixOS Configuration Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    let
      mkHost = path: nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [ path ];
      };
    in {
      nixosConfigurations.laptop = mkHost ./hosts/laptop;
    };
}