#rocky-igpu v1.0
sudo dnf update -y
# Install RPMFusion Free
sudo dnf install https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-9.noarch.rpm -y
# Install RPMFusion NonFree
sudo dnf install https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-9.noarch.rpm -y
# Drivers for Broadwell (5th gen) or newer and some utils
sudo dnf install -y intel-media-driver libva-utils 
# For intel_gpu_top
sudo dnf install -y https://dl.rockylinux.org/pub/rocky/8/AppStream/x86_64/os/Packages/i/intel-gpu-tools-2.99.917-41.20210115.el8.x86_64.rpm
