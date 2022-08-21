echo -e "\e[92mUpdating & upgrading\e[0m"
apt update
apt upgrade

echo -e "\e[92mInstalling Git\e[0m"
apt -y install git

echo -e "\e[92mInstalling Curl\e[0m"
apt -y install curl

echo -e "\e[92mAdding Repository\e[0m"
echo 'deb http://download.opensuse.org/repositories/devel:/languages:/crystal/xUbuntu_22.04/ /' | sudo tee /etc/apt/sources.list.d/devel:languages:crystal.list
curl -fsSL https://download.opensuse.org/repositories/devel:languages:crystal/xUbuntu_22.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/devel_languages_crystal.gpg > /dev/null
apt update

echo -e "\e[92mInstalling Crystal Language\e[0m"
apt -y install crystal

echo -e "\e[92mInstalling Recommended Packages for Crystal\e[0m"
apt install libssl-dev
apt install libxml2-dev
apt install libyaml-dev
apt install libgmp-dev
apt install libz-dev

echo -e "\e[92mSetup complete\e[0m"