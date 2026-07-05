{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../common.nix
  ];
  
  networking.hostName = "nixos-laptop";
}