# rocky-min v1.1
sudo dnf install epel-release -y && sudo dnf update -y &&\
sudo dnf install git neovim wget go screen bash-completion fontconfig unzip tar -y &&\
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip &&\
sudo unzip FiraCode.zip -d /usr/share/fonts/ &&\
rm -f FiraCode.zip &&\
curl -sS https://starship.rs/install.sh | sh &&\
echo "eval "$(starship init bash)"" >> ~/.bashrc
sudo dnf install openssh-server -y
mkdir ~/.config/nvim/ -p && echo -e 'vim.opt.expandtab=true\nvim.opt.tabline=2\nvim.opt.tabstop=2\nvim.opt.mouse=""' | tee ~/.config/nvim/init.lua
sudo systemctl enable sshd
sudo systemctl start sshd
