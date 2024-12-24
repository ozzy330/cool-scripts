#rocky-igpu v1.0
sudo dnf update -y
# Install RPMFusion Free
sudo dnf install https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm -y
# Install RPMFusion NonFree
sudo dnf install https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm -y
# Drivers for Broadwell (5th gen) or newer and some utils
sudo dnf install -y intel-media-driver libva-utils 
