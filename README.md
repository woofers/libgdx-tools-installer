# libgdx-tools-installer

**A simple script to install LibGDX Command Line Tools**

The suite of extremely useful LibGDX tools are hidden behind lots of documentation and long commands.  The `libgdx-tools-installer` aliases all these tools and install them, as well as their GUI counterparts.

## Usage

### Installation

**Warning:** The scripts provided are very simple and has minimal logical.  It could possible conflict if `/opt/libdx-tools` already exists. Use at your own risk!

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

`wget -O - https://raw.githubusercontent.com/woofers/libgdx-tools-installer/master/install.sh | sudo bash`

What this does is clone this repo into `/opt/libgdx-tools`.  Then it downloads the latest LibGDX nightly build with fbx-conv.  Then it links some scripts into `/usr/bin` for allow for easy execution from the command line.

-   `fbx-conv` will run fbx-conv.

-   `texture-packer` will run the LibGDX Texture Packer.

-   `tiled-packer` will run the LibGDX Tiled Packer.

`fbx-conv` is currently linked with the Linux executable, however can be changed in `install.sh` to work on MacOS.

### Uninstallation

Run the `uninstall.sh` in `/opt/libgdx-tools` with `sudo ./uninstall.sh`.

### Update

Run the `update.sh` in `/opt/libgdx-tools` with `sudo ./update.sh`.
