
# USER DEFINED ALIAS

alias nalias='nano ~/.bash_aliases'

# Navigation
alias desk='cd ~/Desktop'
alias up='cd ..'

#System
alias agi='sudo apt-get install'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'

function cdl { cd $1; ls;}

#Robotics
alias crb='cd ~/2catkin_ws'
alias srb='source ~/2catkin_ws/devel/setup.bash'


#Multiview
alias cmv='cd ~/multiview'
alias umv='docker-compose -f ~/multiview/docker-compose.yaml up'
alias smv='docker-compose stop'
cphp() {
 docker exec multiview_php_1 bin/console $1
}

myfunction() {
  echo $1;
  echo $2;
}
