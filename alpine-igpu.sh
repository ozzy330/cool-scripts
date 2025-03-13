# alpine-igpu v1.1
apk update

# Install Intel drivers and related utilities for Broadwell (5th gen) or newer
apk add intel-media-driver libva-utils igt-gpu-tools

