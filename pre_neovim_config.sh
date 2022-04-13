printf '\033c'
echo 'Auto configurater that neovim'
which python
pip install -U pynvim
pip install 'python-lsp-server[all]' pylsp-mypy pyls-isort

npm install -g vim-language-server

brew install ctags
