{ config, pkgs, ... }:

{
  # ロケール
  i18n.defaultLocale = "ja_JP.UTF-8";

  # 日本語入力 (fcitx5-mozc)
  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
  };

  i18n.inputMethod.fcitx5.addons = with pkgs; [
    fcitx5-mozc
    fcitx5-gtk
    qt6Packages.fcitx5-configtool
  ];

  # 環境変数
  environment.sessionVariables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };

  # フォント
  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
  ];
}