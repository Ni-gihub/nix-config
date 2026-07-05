{ config, pkgs, ... }:

{
  # ブートローダー
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # ネットワーク
  networking.networkmanager.enable = true;

  # タイムゾーン & キーボード
  time.timeZone = "Asia/Tokyo";
  services.xserver.xkb.layout = "jp";

  # 仮想化
  virtualisation.docker.enable = true;

  # グラフィック・ディスプレイマネージャー・デスクトップ (Niri)
  programs.niri.enable = true;
  services.displayManager.ly.enable = true;
  programs.xwayland.enable = true;
  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };
  
  # Nixの設定
  nixpkgs.config.allowUnfree = true;
  nix.settings.experimental-features = [ "nix-command" "flakes" ]; # Flakesを有効化
}