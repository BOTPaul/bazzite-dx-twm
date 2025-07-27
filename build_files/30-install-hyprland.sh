#!/usr/bin/bash

set -xeuo pipefail

dnf5 -y remove fish plasma-workspace plasma-* kde-*



dnf5 -y copr enable solopasha/hyprland
dnf5 -y install             \
    hyprland			    \
	hyprpaper			    \
	hyprpicker			    \
	hypridle			    \
	hyprlock			    \
	hyprsunset			    \
	hyprpolkitagent		    \
	hyprsysteminfo		    \
	hyprpanel			    \
	qt6ct-kde			    \
	hyprland-qt-support	    \
	hyprland-qtutils
dnf5 -y copr disable solopasha/hyprland

dnf5 -y copr enable pgdev/ghostty
dnf5 -y install             \
    ghostty             
dnf5 -y copr disable pgdev/ghostty

dnf5 -y copr enable erikreider/SwayNotificationCenter
dnf5 -y install             \
    SwayNotificationCenter
dnf5 -y copr disable erikreider/SwayNotificationCenter

dnf5 -y install             \
    sddm                    \
    pipewire                \
    wofi                    \
    brightnessctl

systemctl enable podman.socket
systemctl --global enable hyprpanel.service
