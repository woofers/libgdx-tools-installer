# libgdx-tools-installer

**A simple script to install LibGDX Command Line Tools**

The suite of extremely useful LibGDX tools are hidden behind lots of documentation and long commands.  The `libgdx-tools-installer` aliases all these tools and install them, as well as their GUI counterparts.

## Usage

### Installation

`wget -O - https://raw.githubusercontent.com/woofers/libgdx-tools-installer/master/install.sh | sudo bash`

What this does is clone this repo into `/opt/libgdx-tools`.  Then it downloads the latest LibGDX nightly build with fbx-conv.  Then it links some scripts into `/usr/bin` for allow for easy execution from the command line.

-   `fbx-conv` will run fbx-conv.

-   `texture-packer` will run the LibGDX Texture Packer.

-   `tiled-packer` will run the LibGDX Tiled Packer.

`fbx-conv` is currently linked with Linux executable, however can be changed in `install.sh` to work on MacOS.

### Uninstallation

Run the `uninstall.sh` in `/opt/libgdx-tools` with `sudo ./uninstall.sh`.

### Update

Run the `update.sh` in `/opt/libgdx-tools` with `sudo ./update.sh`.

## Acknowledgments

-   **GPL 3.0 2018**, *Jaxson Van Doorn*
