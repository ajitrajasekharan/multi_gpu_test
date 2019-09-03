#sudo apt-get install zip 
#wget https://repo.continuum.io/archive/Anaconda2-2018.12-Linux-x86_64.sh
#bash Anaconda2-2018.12-Linux-x86_64.sh
#exit
echo "Starting PyTorch install"
sleep 2
(set -a; . ~/.bashrc; set +a; which conda; sleep 5;  conda create -n bert python=3.6; conda activate bert; conda install PyTorch -c PyTorch; sudo apt install python3-pip; pip3 install torchvision; pip install pytorch-transformers; pip3 install seqeval; pip3 install tqdm; pip3 install nltk)

echo "Installation complete"
echo "Perform the following steps to activate environment"
echo "1) . ~/.bashrc"
echo "2) conda activate bert"
