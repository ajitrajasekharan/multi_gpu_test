OS=`lsb_release -a 2>/dev/null | grep -i "distributor" | awk '{print $3}'`
VERSION=`lsb_release -a 2>/dev/null | grep -i "release" | awk '{print $2}'`
export OS VERSION

echo $OS $VERSION
echo "Is you OS -  Ubuntu 16.04? Y/N:"
read response
echo
if [ "$response" = "Y" ]
then
	#Use the script below only for Ubuntu version 16.04
	echo "Echo Installing driver for $OS $VERSION"
	sudo ./ubuntu_16_04_nvidia_driver.sh
	nvidia-smi
else
	echo "(1) Choose drivers from link below. (2) Save into file say driver.sh. (3) sudo ./driver.sh"
	echo "Link: https://cloud.google.com/compute/docs/gpus/add-gpus#install-gpu-driver"
fi
echo

