sudo dnf install epel-release -y && sudo dnf update -y &&\
sudo dnf install 'dnf-command(config-manager)' -y &&\
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo &&\
sudo dnf install git neovim wget go screen bash-completion fontconfig unzip \
docker-ce docker-ce-cli containerd.io docker-compose-plugin -y &&\
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip &&\
sudo unzip FiraCode.zip -d /usr/share/fonts/ &&\
rm FiraCode.zip &&\
curl -sS https://starship.rs/install.sh | sh &&\
echo "eval "$(starship init bash)"" >> ~/.bashrc
sudo dnf install openssh-server -y
echo -e "set expandtab\nset tabline=2\nset tabstop=2\nset mouse=" >> ~/.config/nvim/init.vim
sudo systemctl enable sshd
sudo systemctl start sshd
