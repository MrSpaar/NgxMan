sudo cp ngxman /bin/ngxman
sudo chmod +x /bin/ngxman
printf "ngxman script installed in /bin/ngxman"

sudo cp ngxman_comleter /etc/bash_completion.d/ngxman
printf "ngxman bash completion installed in /etc/bash_completion.d/ngxman"

echo "source /etc/bash_completion.d/ngxman" >> ~/.bashrc
source ~/.bashrc
printf "ngxman bash completion sourced in ~/.bashrc"
