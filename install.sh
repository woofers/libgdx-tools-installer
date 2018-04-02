
# Clone Repo
cd /opt
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
ln -s "/opt/libgdx-tools/libgdx/fbx-conv/libfbxsdk.so" "/usr/lib64/libfbxsdk.so"
rm fbx-conv.zip

# fbx-conv GUI
cd fbx-conv
wget https://github.com/ASneakyFox/libgdx-fbxconv-gui/releases/download/1.5/fbxconv-gui.jar
cd ..

# texture-packer GUI
wget https://github.com/crashinvaders/gdx-texture-packer-gui/releases/download/4.6.0/gdx-texturepacker-4.6.0.zip
unzip gdx-texturepacker-4.6.0.zip -d texture-packer-gui
cd texture-packer-gui
chmod a+x ./launcher.sh

# Alias Commands
ln -s "/opt/libgdx-tools/texture-packer" "/usr/bin/texture-packer"
ln -s "/opt/libgdx-tools/libgdx/texture-packer-gui/launcher.sh" "/usr/bin/texture-packer-gui"
ln -s "/opt/libgdx-tools/tiled-packer" "/usr/bin/tiled-packer"
ln -s "/opt/libgdx-tools/fbx-conv-gui" "/usr/bin/fbx-conv-gui"
ln -s "/opt/libgdx-tools/libgdx/fbx-conv/fbx-conv-lin64" "/usr/bin/fbx-conv"
