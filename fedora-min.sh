# fedora-min v1.0
sudo dnf update -y &&\
sudo dnf install git neovim wget go screen bash-completion fontconfig unzip tar -y &&\
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/FiraCode.zip &&\
sudo unzip -o FiraCode.zip -d /usr/share/fonts/ &&\
rm -f FiraCode.zip &&\
curl -sS https://starship.rs/install.sh | sh &&\
echo "eval "$(starship init bash)"" >> ~/.bashrc
sudo dnf install openssh-server -y
mkdir ~/.config/nvim/ -p && echo \
"
vim.o.hlsearch = false
vim.o.mouse = ''
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
"\ | tee ~/.config/nvim/init.lua
sudo systemctl enable sshd
sudo systemctl start sshd
