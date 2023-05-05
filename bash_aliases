#!/bin/bash
export Q6600ip='10.137.148.224'
export t400ip='10.137.148.223'
export r720ip='172.28.5.190'
export macbookip='10.137.148.230'
export conflueceip='172.28.5.180'
export ghxvps='10.137.149.220'
export config_folder='ubuntu_config'
export ethname='enp2s0'
export sshvirtualboxport=2222
export parallels_ubuntu='10.211.55.18'
export platform_server='10.137.148.201'

alias ll='ls -alh'
alias rs='func() { cp /home/$USER/ubuntu_config/bash_aliases ~/.bash_aliases;source /home/$USER/.bashrc; }; func'
alias ea='vi /home/$USER/ubuntu_config/bash_aliases'
alias home='cd /opt/$USER'
alias b='cd ..'
alias findc='func() { find . -name $1; }; func'
alias findp='func() { find $1 -name $2;}; func'
alias grepc='func() { grep -rn $1 .; }; func'
alias grepp='func() { grep -rn $1 $2; }; func'
alias countcode='find . -name "*.c" | xargs wc -l'
alias show='func() { tree -L $1 .; }; func'
alias fline='func() { find $1 -name "*.$2" |xargs cat|wc -l ; }; func'
alias fcount='func() { tree -a $1 | tail -1 ; }; func'

#ssh 
alias sshr='ssh hawkin@$r720ip'
alias sshq='ssh hawkin@$Q6600ip' 
alias sshc='ssh hawkin@$confluenceip'
alias sshghxvps='ssh -p $sshvirtualboxport hawkin@$ghxvps'
alias sshpara='ssh hawkin@$parallels_ubuntu'
alias ssh790='ssh hawkin@$dell790'
alias sshp="ssh zhj@$platform_server"
#git command aliase
alias gitc='git clone '
alias gitb='git branch'
alias gitba='git branch -a'
alias gits='git status'
alias gitp='git pull'
alias giturl='git remote -v'
#ftp 
alias ftplq='ncftp -u hawkin -p sac $Q6600ip'
alias ftplt='ncftp -u hawkin -p sac $t400ip'
alias ftplr='ncftp -u hawkin -p sac $r720ip'
alias ftplv='ncftp -u hawkin -p hawkin $vps'
alias ftplm='ncftp -u hawkin -p sac -P 2121 $macbookip'
alias ftpld='ncftp -u hawkin -p sac $dellip'
#god command
alias tmuxc='tmux new -s '
alias tmuxa='tmux attach-session -t '
alias newscreen='tmuxc '
alias showscreen='tmuxa '
alias work='tmuxc worksession'
alias rework='tmuxa worksession'
alias pullout='udisksctl power-off --block-device '
alias macclear='fd -H .DS_Store | xargs rm -rf'
#work folder change

#others
#alias fd='find ./ -name "*" | grep  '
#alias fda='find ./ -name "*" | xargs grep '


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
alias runnuc980='source /home/$USER/$config_folder/.bash_armv5_uclibc'
alias runt3='source /home/$USER/ubuntu_config/.bash_t3'

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
export PIP_DEFAULT_TIMEOUT=100
# set bat default color theme
export BAT_THEME="TwoDark"
export PATH=~/bin:$PATH
