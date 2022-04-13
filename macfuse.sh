# create folder
mkdir m1Fuse; cd m1Fuse
# download sources
wget "https://github.com/osxfuse/osxfuse/releases/download/macfuse-4.0.5/macfuse-4.0.5.dmg"
wget "https://github.com/osxfuse/sshfs/archive/osxfuse-sshfs-2.5.0.tar.gz"
wget "https://github.com/libfuse/sshfs/releases/download/sshfs-2.10/sshfs-2.10.tar.gz"

# unzip
tar -xzvf sshfs-2.10.tar.gz

cd ./sshfs-2.10

# edit file for apple sillicon
sed 's/include <fuse_darwin.h>/\/\/# include <fuse_darwin.h>/g' sshfs.c > sshfs.c.new && mv sshfs.c.new sshfs.c

./configure --prefix=/opt/homebrew/Cellar/sshfs/2.5.0

# install
make install

