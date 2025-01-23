# rocky-min v1.4
sudo dnf install epel-release -y && sudo dnf update -y &&\
sudo dnf install git neovim wget go screen bash-completion fontconfig unzip tar -y &&\
curl -L ozzy330.com/shell > .bashrc
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
