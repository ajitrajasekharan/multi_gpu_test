sudo apt-get install zip 
wget https://repo.continuum.io/archive/Anaconda2-2018.12-Linux-x86_64.sh
bash Anaconda2-2018.12-Linux-x86_64.sh
(. .bashrc;
conda create -n bert python=3.5  tensorflow-gpu;)
echo "conda activate bert"
echo "Check if gnu is available by testing in python"
echo "start python"
echo "import tensorflow as tf"
echo "tf.test.is_gpu_available()"
