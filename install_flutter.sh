#! /bin/bash

curl https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.6-stable.tar.xz \
	-o flutter_linux_v1.9.1+hotfix.6-stable.tar.xz

tar xf flutter_linux_v1.9.1+hotfix.6-stable.tar.xz

mv flutter/ ~/
rm -Rf flutter_linux_v1.9.1+hotfix.6-stable.tar.xz

echo 'export PATH="$PATH:/home/$USER/flutter/bin"' >> ~/.bashrc
echo 'export PATH="$PATH:/home/$USER/flutter/bin"' >> ~/.zshrc
