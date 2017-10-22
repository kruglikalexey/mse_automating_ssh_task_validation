# This script provides the ability to configure a virtual machine in order
# to prepare it for this challenge. It runs for every virtual machine created
# prior to assigning it to a user. The execution time is limited to 5 minutes.
sudo sh -c $'echo "export PROMPT_COMMAND=\'history -a;history -r\'" > /.box/bashrc.d/box/rules' 
sudo sh -c 'echo HISTFILE=/home/box/.bash_history >> /.box/bashrc.d/box/rules' 
PROMPT_COMMAND="history -a"
sudo chsh -s /bin/bash box
echo "box:box" | sudo chpasswd box
