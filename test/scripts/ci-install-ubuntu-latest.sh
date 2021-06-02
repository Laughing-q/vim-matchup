sudo apt-get update
sudo add-apt-repository universe
wget -O - https://github.com/tree-sitter/tree-sitter/releases/download/v0.19.4/tree-sitter-linux-x64.gz | gunzip -c > tree-sitter
sudo cp ./tree-sitter /usr/bin/tree-sitter
sudo chmod uog+rwx /usr/bin/tree-sitter
wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/.local/share/nvim/site/pack/nvim-treesitter/start
wget -O nvim-treesitter.zip https://github.com/nvim-treesitter/nvim-treesitter/archive/refs/heads/master.zip
unzip nvim-treesitter.zip
ln -s $(pwd)/nvim-treesitter-master ~/.local/share/nvim/site/pack/nvim-treesitter/start
sudo cp ./nvim.appimage /usr/bin/nvim
sudo chmod uog+rwx /usr/bin/nvim
