{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # GUI / ツール
    foot
    fuzzel
    waybar
    mako
    google-chrome
    vscode
    vesktop

    # 開発環境
    git
    python3
    gcc
    gnumake
    curl
    mise
    supabase-cli
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "pnpm-10.29.2"
  ];
}