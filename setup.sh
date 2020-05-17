git clone https://github.com/anthliu/dotfiles.git
cp dotfiles/.bashrc .
cp dotfiles/.vimrc .
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p /home/anthliu/miniconda
rm miniconda.sh 
miniconda/bin/conda init
git config --global core.editor "vim"
git config --global user.name "Anthony Liu"
git config --global push.default simple
