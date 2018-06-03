

# libgdx-tools-installer

**A simple script to install LibGDX Command Line Tools**

The suite of extremely useful LibGDX tools are hidden behind lots of documentation and long commands.  The `libgdx-tools-installer` aliases all these tools and install them, as well as their GUI counterparts.


## Usage

Specific info on usage of the LibGDX tools can be found [here.](https://libgdx.badlogicgames.com/tools.html)

**Warning:** The installation scripts provided are very simple and have minimal logical.  It could possibly execute unexpected actions if installing into a write protected folder. Use at your own risk!


### Installation

Simply run `sudo wget -O - https://raw.githubusercontent.com/woofers/libgdx-tools-installer/master/install.sh | sudo bash`

What this does is clone this repo into a folder in the current directory named `libgdx-tools`.  It stores the install location into `~/.gdxtools`. Then it then downloads the latest LibGDX nightly build with fbx-conv.  Then it links some scripts into `/usr/bin` for allow for easy execution from the command line.

-   `fbx-conv` will run fbx-conv.

-   `fbx-conv-gui` will run fbx-conv as a GUI (Documentation found [here](https://github.com/ASneakyFox/libgdx-fbxconv-gui)).

-   `texture-packer` will run the LibGDX Texture Packer.

-   `texture-packer-gui` will run the LibGDX Texture Packer as a GUI (Documentation found [here](https://github.com/crashinvaders/gdx-texture-packer-gui)).

-   `tiled-packer` will run the LibGDX Tiled Packer.

`fbx-conv` is currently linked with the Linux executable, however can be changed in `install.sh` to work on MacOS.


### Uninstallation

Run the `uninstall.sh` in the install directory with `sudo ./uninstall.sh`.


### Update

Run the `update.sh` in the install directory with `sudo ./update.sh`.
