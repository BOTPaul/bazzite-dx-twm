# Bazzite Developer Edition - TWM

This is just a fork of [bazzite-dx](https://github.com/ublue-os/bazzite-dx), but with Hyprland.

## Installation

To rebase an existing Bazzite installation to Bazzite DX TWM, use one of the following commands based on your current variant:

### NVIDIA Variants

**For KDE Plasma with NVIDIA:**
```bash
rpm-ostree rebase ostree-unverified-registry:ghcr.io/botpaul/bazzite-dx-twm:stable
```

### ⚠️ Important Desktop Environment Warning

**Do not switch between GNOME and KDE variants!** If you are currently running:
- **GNOME** (bazzite-gnome*): Only use the `-gnome` variants above
- **KDE Plasma** (standard bazzite): Only use the variants without `-gnome` in the name

Switching between desktop environments via rebase can break your installation and may require a complete reinstall.

After running the rebase command, reboot your system to complete the installation. 

## Acknowledgments

This project is built upon the work from [bazzite-dx](https://github.com/ublue-os/bazzite-dx) which itself was built upon the work from [amyos](https://github.com/astrovm/amyos)

Thanks to [jerhage/bazzite-custom](https://github.com/jerhage/bazzite-custom) which I used as a quick start to setup hyprland
