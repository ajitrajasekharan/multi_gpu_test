sudo apt-get install zip 
wget https://repo.continuum.io/archive/Anaconda2-2018.12-Linux-x86_64.sh
bash Anaconda2-2018.12-Linux-x86_64.sh
. .bashrc
conda create -n bert python=3.5
conda activate bert
conda install PyTorch -c PyTorch
sudo apt install python3-pip
pip3 install torchvision
pip3 install pytorch-pretrained-bert
pip3 install seqeval
pip3 install tqdm
pip3 install nltk
