#!/usr/bin/env bash

# Installs packages needed for compilation inside docker image.

# Exit on error
set -o errexit
set -o errtrace

# Enable tracing of what gets executed
# set -o xtrace

project_dir="/usr/src/app"

# Link to AUR snapshots
aur_snapshot_link="https://aur.archlinux.org/cgit/aur.git/snapshot/"

# Packages to add to local repo
# TODO: Update local aur dependencies
local_aur_packages=(
)

# Dependencies with same name packages
dependencies=(
    'wget'
    'libisoburn'
    'squashfs-tools'
    'p7zip'
    'arch-install-scripts'
    'xxd'
    'gtk3'
    'pacman-contrib'
    'pkgconf'
    'patch'
    'gcc'
    'make'
    'binutils'
    'file'
    'grep'
    'xz'
    'archiso'
    'mkinitcpio-archiso'
)

check_dependencies() {
    echo "Checking dependencies ..."

    for pkg in "${dependencies[@]}"; do
        pacman -Syu --needed --noconfirm "${pkg}"
    done

    echo "Done installing dependencies"
    echo ""
}

local_repo_builds() {
    echo "Building AUR packages for local repo ..."

    # Begin build loop
    if [ ! "$(ls /home/builder/ | grep "${local_aur_packages[8]}")" ]; then
        pacman -R --noconfirm yay
        for pkg in "${local_aur_packages[@]}"; do
            echo -e "Making ${pkg} ..."
            wget -qO- "${aur_snapshot_link}/${pkg}.tar.gz" | tar xz -C /home/builder/
            chown -R builder /home/builder/
            cd /home/builder/"${pkg}" || exit
            su builder -c 'makepkg -sif --noconfirm --nocheck'
            su builder -c "xz -z /home/builder/${pkg}/${pkg}*.pkg.tar"

            echo -e "${pkg} made successfully"
        done
    fi

    echo ""
    echo "Done making packages"
    echo "Please wait..."
}

# TODO: Other offline needed packages?

check_dependencies
local_repo_builds
