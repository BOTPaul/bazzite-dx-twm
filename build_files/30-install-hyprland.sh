#!/usr/bin/bash

RELEASE="$(rpm -E %fedora)"
set -xeuo pipefail

enable_copr() {
    repo="$1"
    repo_with_dash="${repo/\//-}"
    wget "https://copr.fedorainfracloud.org/coprs/${repo}/repo/fedora-${RELEASE}/${repo_with_dash}-fedora-${RELEASE}.repo" \
        -O "/etc/yum.repos.d/_copr_${repo_with_dash}.repo"
}

enable_copr solopasha/hyprland
enable_copr erikreider/SwayNotificationCenter
enable_copr pgdev/ghostty

dnf5 install -y --setopt=install_weak_deps=False \
    xdg-desktop-portal-hyprland \
    hyprland \
    hyprlock \
    hypridle \
    hyprpicker \
    hyprsysteminfo \
    hyprsunset \
    hyprpaper \
    hyprcursor \
    hyprgraphics \
    hyprpolkitagent \
    hyprland-qtutils \
    hyprland-qt-support \
    hyprland-uwsm \
    uwsm \
    pyprland \
    waybar \
    wofi \
    rofi \
    swaync \
    wl-clipboard \
    grim \
    brightnessctl \
    pavucontrol \
    network-manager-applet \
    clipman \
    nwg-drawer \
    wdisplays \
    pavucontrol \
    SwayNotificationCenter \
    NetworkManager-tui \
    tmux \
    ghostty \
    blueman \
    qt5-qtwayland \
    qt6-qtwayland \
    sddm

dnf5 -y copr disable solopasha/hyprland
dnf5 -y copr disable erikreider/SwayNotificationCenter
dnf5 -y copr disable pgdev/ghostty
