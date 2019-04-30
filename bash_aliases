#!/bin/bash
export serverip='10.137.148.201'
export Q6600ip='10.137.148.224'
export t400ip='10.137.148.223'
export mypcip='10.137.148.220'
export r720ip='172.28.5.190'
export vps='23.27.112.197'
export config_folder='ubuntu_config'

alias ll='ls -alh'
alias rs='source /home/$USER/.bashrc'
alias ea='vi /home/$USER/.bash_aliases'
alias home='cd /opt/$USER'

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

#god command
alias tmuxc='tmux new -s '
alias tmuxa='tmux attach-session -t '
alias bd=". bd -s "
alias work='tmuxc worksession'
alias rework='tmuxa worksession'
#work folder change
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


alias xzc='xz -z '
alias xzx='xz -d '

alias editalias='vi /home/$USER/ubuntu_config/bash_aliases'

#data format
alias binformat='/home/$USER/$config_folder/binformat.sh '
alias hexformat='/home/$USER/$config_folder/hexformat.sh '
alias decformat='/home/$USER/$config_folder/decformat.sh '
alias rformat='/home/$USER/$config_folder/rformat.sh '

#kernel build command

alias mm="make menuconfig"


#server



#cygwin


