#https://linuxize.com/post/how-to-install-node-js-on-ubuntu-20-04/

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source /root/.bashrc
nvm list-remote
nvm install node v14.21.3

