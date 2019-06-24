#!/bin/bash
export serverip='10.137.148.201'
export Q6600ip='10.137.148.224'
export t400ip='10.137.148.223'
export mypcip='10.137.148.220'
export r720ip='172.28.5.190'
export vps='23.27.112.197'
export insperip='10.137.153.3'
export config_folder='ubuntu_config'

alias ll='ls -alh'
alias rs='func() { cp /home/$USER/ubuntu_config/bash_aliases ~/.bash_aliases;source /home/$USER/.bashrc; }; func'
alias ea='vi /home/$USER/ubuntu_config/bash_aliases'
alias home='cd /opt/$USER'
alias b='cd ..'
alias findc='func() { find . -name $1; }; func'
alias findp='func() { find $1 -name $2;}; func'
alias grepc='func() { grep -rn $1 .; }; func'
alias grepp='func() { grep -rn $1 $2; }; func'

#ssh 

alias sshs='ssh -p 2226 hawkin@$serverip'
alias ssht='ssh hawkin@$t400ip'
alias sshr='ssh hawkin@$r720ip'
alias sshq='ssh hawkin@$Q6600ip' 
#git command aliase
alias gitc='git clone '
alias gitb='git branch'
alias gitba='git branch -a'
alias gits='git status'
alias gitp='git pull'
alias giturl='git remote -v'
#ftp 
alias ftpln='ncftp -u hawkin -p sac 10.245.105.2 '
alias ftpls='ncftp -u hawkin -p sac $mypcip'
alias ftplq='ncftp -u hawkin -p sac $Q6600ip'
alias ftplt='ncftp -u hawkin -p sac $t400ip'
alias ftplr='ncftp -u hawkin -p sac $r720ip'
alias ftplv='ncftp -u hawkin -p hawkin $vps'
alias nfsr='sudo mount -t nfs -rw $r720ip:/opt/hawkin /opt/hawkin/r720'
alias nfst='sudo mount -t nfs -rw $t400ip:/opt/hawkin /opt/hawkin/t400'
alias nfsq='sudo mount -t nfs -rw $Q6600ip:/opt/hawkin /opt/hawkin/q6600'
alias nfsi='sudo mount -t nfs -rw $insperip:/opt/hawkin /opt/hawkin/insper'
#god command
alias tmuxc='tmux new -s '
alias tmuxa='tmux attach-session -t '
alias bd=". bd -s "
alias newscreen='tmuxc '
alias showscreen='tmuxa '
alias work='tmuxc worksession'
alias rework='tmuxa worksession'
#work folder change
alias openc='nautilus . &'
alias openhome='nautilus ~ &'
alias openf='nautilus '

#others
alias fd='find ./ -name "*" | grep  '
alias fda='find ./ -name "*" | xargs grep '


alias fumount='sudo umount '
alias fmount='sudo mount -o loop '
#tool chain
alias runzynq='source /home/$USER/$config_folder/.bash_zynq'
alias runarmv7el='source /home/$USER/$config_folder/.bash_armv7el'
alias runarmv7hf='source /home/$USER/$config_folder/.bash_armv7hf'
alias runarmv7hf5='source /home/$USER/$config_folder/.bash_armv7hf_5'
alias runarmv832='source /home/$USER/$config_folder/.bash_armv8_32'
alias runarmv864='source /home/$USER/$config_folder/.bash_armv8_64'
alias runforlink_imx6='source /home/$USER/$config_folder/.bash_forlink_imx6'
alias rundrlimx6='source /home/$USER/$config_folder/.bash_drl600u'
alias runsacpowerpc='source /home/$USER/$config_folder/.bash_powerpc_sac'
alias runqt='source /home/$USER/ubuntu_config/.bash_qt_gcc4.5'

alias xzc='xz -z '
alias xzx='xz -d '

alias editalias='vi /home/$USER/ubuntu_config/bash_aliases'
#wine command
alias sourceinsight='cd ~/.wine/drive_c/Program\ Files\ \(x86\)/Source\ Insight\ 3/'
#data format
alias binformat='/home/$USER/$config_folder/binformat.sh '
alias hexformat='/home/$USER/$config_folder/hexformat.sh '
alias decformat='/home/$USER/$config_folder/decformat.sh '
alias rformat='/home/$USER/$config_folder/rformat.sh '

#kernel build command

alias mm="make menuconfig"


#server



#cygwin

#ide app start
alias pycharm='sh /opt/hawkin/pycharm-community-2019.1.1/bin/pycharm.sh &'
