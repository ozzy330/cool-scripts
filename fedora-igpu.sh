#fedora-igpu v1.0
sudo dnf update -y
# Install RPMFusion Free
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-41.noarch.rpm
# Install RPMFusion NonFree
sudo dnf install -y https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-41.noarch.rpm
# Drivers for Broadwell (5th gen) or newer and some utils
sudo dnf install -y intel-media-driver libva-utils igt-gpu-tools
