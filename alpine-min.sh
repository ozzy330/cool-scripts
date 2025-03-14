# alpine-min v1.1
apk update &&\
apk add git neovim wget go screen bash-completion fontconfig unzip tar curl openssh &&\
curl -L ozzy330.com/shell > ~/.bashrc
mkdir -p ~/.config/nvim/ && echo \
"
vim.o.hlsearch = false
vim.o.mouse = ''
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
" | tee ~/.config/nvim/init.lua
rc-update add sshd
service sshd start

