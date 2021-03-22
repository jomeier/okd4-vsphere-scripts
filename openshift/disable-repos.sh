sudo egrep enabled=1 /etc/yum.repos.d/*
sudo sed -i 's/enabled=1/enabled=0/g' /etc/yum.repos.d/*
sudo egrep enabled=1 /etc/yum.repos.d/*


