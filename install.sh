#!/bin/bash

# Create .gdxtools
echo -n "export GDXTOOLS=" > ~/.gdxtools
pwd >> ~/.gdxtools
source ~/.gdxtools

# Clone Repo
git clone https://github.com/woofers/libgdx-tools-installer libgdx-tools

# LibGDX Nightly
cd libgdx-tools
wget https://libgdx.badlogicgames.com/nightlies/libgdx-nightly-latest.zip
unzip libgdx-nightly-latest.zip -d libgdx
rm libgdx-nightly-latest.zip

# fbx-conv
cd libgdx
wget http://libgdx.badlogicgames.com/fbx-conv/fbx-conv.zip
unzip fbx-conv.zip -d fbx-conv
ln -s "$GDXTOOLS/libgdx-tools/libgdx/fbx-conv/libfbxsdk.so" "/usr/lib64/libfbxsdk.so"
rm fbx-conv.zip

# Set GUI Versions
FBX_GUI=1.5
TEXTURE_PACKER_GUI=4.7.3

# fbx-conv GUI
cd fbx-conv
wget https://github.com/ASneakyFox/libgdx-fbxconv-gui/releases/download/$FBX_GUI/fbxconv-gui.jar
cd ..

# texture-packer GUI
wget https://github.com/crashinvaders/gdx-texture-packer-gui/releases/download/$TEXTURE_PACKER_GUI/gdx-texturepacker-$TEXTURE_PACKER_GUI.zip
unzip gdx-texturepacker-$TEXTURE_PACKER_GUI.zip -d texture-packer-gui
cd texture-packer-gui

# Alias Commands
ln -s "$GDXTOOLS/libgdx-tools/texture-packer" "/usr/bin/texture-packer"
ln -s "$GDXTOOLS/libgdx-tools/texture-packer-gui" "/usr/bin/texture-packer-gui"
ln -s "$GDXTOOLS/libgdx-tools/tiled-packer" "/usr/bin/tiled-packer"
ln -s "$GDXTOOLS/libgdx-tools/fbx-conv-gui" "/usr/bin/fbx-conv-gui"

if [[ "$OSTYPE" == "darwin"* ]]; then
    ln -s "$GDXTOOLS/libgdx-tools/libgdx/fbx-conv/fbx-conv-mac" "/usr/bin/fbx-conv"
else
    ln -s "$GDXTOOLS/libgdx-tools/libgdx/fbx-conv/fbx-conv-lin64" "/usr/bin/fbx-conv"
fi
