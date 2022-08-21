echo -e "\e[92mUpdating & upgrading\e[0m"
apt update
apt upgrade

echo -e "\e[92mInstalling Git\e[0m"
apt -y install git

echo -e "\e[92mInstalling Curl\e[0m"
apt -y install curl

echo -e "\e[92mAdding Repository\e[0m"
curl https://dist.crystal-lang.org/apt/setup.sh | sudo bash

echo -e "\e[92mInstalling Crystal Language\e[0m"
sudo apt -y install build-essential
sudo apt -y install crystal

echo -e "\e[92mInstalling Recommended Packages for Crystal\e[0m"
sudo apt install libssl-dev
sudo apt install libxml2-dev
sudo apt install libyaml-dev
sudo apt install libgmp-dev
sudo apt install libz-dev

echo -e "\e[92mSetup complete\e[0m"