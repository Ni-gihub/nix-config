{ pkgs, ... }:

{
  imports = [
    ../modules/core.nix
    ../modules/env.nix
    ../modules/pkgs.nix
  ];

  users.users.nakaoku = {
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "docker" ];
    packages = with pkgs; [
      tree
    ];
  };

  system.stateVersion = "26.05";
}