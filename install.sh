
# Clone Repo
cd /opt
git clone https://github.com/woofers/libgdx-tools-installer libgdx-tools

# LibGDX Nightly
cd libgdx-tools
wget https://libgdx.badlogicgames.com/nightlies/libgdx-nightly-latest.zip
unzip libgdx-nightly-latest.zip -d libgdx
rm libgdx-nightly-latest.zip

# Alias Commands
ln -s "/opt/libgdx-tools/texture-packer" "/usr/bin/texture-packer"
ln -s "/opt/libgdx-tools/tiled-packer" "/usr/bin/tiled-packer"

# fbx-conv
cd libgdx
wget http://libgdx.badlogicgames.com/fbx-conv/fbx-conv.zip
unzip fbx-conv.zip -d fbx-conv
ln -s "/opt/libgdx-tools/libgdx/fbx-conv/fbx-conv-lin64" "/usr/bin/fbx-conv"
ln -s "/opt/libgdx-tools/libgdx/fbx-conv/libfbxsdk.so" "/usr/lib64/libfbxsdk.so"
rm fbx-conv.zip
