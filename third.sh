Usage="Enter values 1-5"
command=${1?$Usage}



function step1
{
	sudo apt-get install zip 
	wget https://repo.continuum.io/archive/Anaconda2-2018.12-Linux-x86_64.sh
	bash Anaconda2-2018.12-Linux-x86_64.sh
	echo "************ DO NOT SKIP STEP BELOW BEFORE PROCEEDING TO NEXT INSTALL STEP ******"
	echo "1) Perform:"
	echo "   . ~/.bashrc"
	echo " and confirm conda command is found by typing"
	echo "2)    conda | head -1"
	echo "Perform step2:"
	echo "3)      ./third.sh 2"
	echo "************ DO NOT SKIP the THREE STEPS ABOVE BEFORE PROCEEDING TO NEXT INSTALL STEP ******"
	 
}

function step2
{
	#echo "Starting PyTorch install"
	conda create -n bert python=3.6;
	echo "************ DO NOT SKIP STEP BELOW BEFORE PROCEEDING. ******"
	echo "************ FAILURE TO ACTIVE CONDA ENV WILL CAUSE NEXT STEPS TO FAIL. ******"
        echo "Perform:"
        echo "1)  conda activate bert"
	echo "Then perform:"
	echo "2)      ./third.sh 3"
	echo "************ DO NOT SKIP STEP ABOVE BEFORE PROCEEDING. ******"
	echo "************ FAILURE TO ACTIVE CONDA ENV WILL CAUSE NEXT STEPS TO FAIL. ******"
}

function step3
{
	conda install PyTorch -c PyTorch; 
	echo "Perform step4:"
	echo "./third.sh 4"
}

function step4
{
	sudo apt install python3-pip; pip3 install torchvision;  pip install transformers; pip3 install seqeval; pip3 install tqdm; pip3 install nltk; pip install tensorboardX;

	echo "If we dont need tensorflow. Skip step 5. NOTE: In some versions on multigpu machines, performing step 5 can cause training to fail"
	echo "Perform step5:"
	echo "./third.sh 5"
}

function step5
{
	conda install tensorflow-gpu
	echo "Installation complete"
}

if [ $command -eq 1 ]
then
	echo "Performing step1"
	step1
elif [ $command -eq 2 ]
then
	echo "Performing step2"
	step2
elif [ $command -eq 3 ]
then
	echo "Performing step3"
	step3
elif [ $command -eq 4 ]
then
	echo "Performing step4"
	step4
elif [ $command -eq 5 ]
then
	echo "Performing step5"
	step5
else
	echo "Invalid option:" $Usage
fi

