#!/bin/bash
export serverip='10.137.148.201'
export ubuntuip='10.137.148.25'
export mypcip='10.137.148.23'
export r710ip='172.28.5.190'
export vps='23.27.112.197'

alias ll='ls -alh'
alias rs='source /home/$USER/.bashrc'
alias ea='vi /home/$USER/.bash_aliases'
alias home='cd /opt/$USER'

#ssh 
alias ssv='ssh zhj@10.134.68.176'
alias sss='ssh -p 2226 hawkin@10.134.67.176'
alias ssu='ssh hawkin@$ubuntuip'
alias ssv='ssh hawkin@vps'
#git command aliase
alias gc='git clone '
alias gck='git clone git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git '
alias gcu='git clone git://git.denx.de/u-boot.git'
alias gcxk='git clone https://github.com/Xilinx/linux-xlnx'
alias gcxu='git clone https://github.com/Xilinx/u-boot-xlnx'
alias gurl='git remote -v'
#ftp 
alias ftpln='ncftp -u hawkin -p sac 10.245.105.2 '
alias ftpls='ncftp -u hawkin -p sac $mypcip'
alias ftplu='ncftp -u hawkin -p sac $ubuntuip'
alias ftplr='ncftp -u hawkin -p sac $r710ip'
alias ftplv='ncftp -u hawkin -p hawkin $vps'

#god command
alias tmuxc='tmux new -s '
alias tmuxa='tmux attach-session -t '
alias bd=". bd -s "
alias work='tmuxc worksession'
alias rework='tmuxa worksession'
#work folder change
alias ch='cd /home/$USER/ '
alias cw='cd /opt/$USER/ '
alias cc='cd /opt/$USER/calix '
alias cs='cd /opt/$USER/sac '
alias co='cd /opt/$USER/opensource '
alias ct='cd /opt/$USER/toolchain '
#others
alias fd='find ./ -name "*" | grep  '
alias fda='find ./ -name "*" | xargs grep '

alias sz='du -sh '
alias sza='du -sh *'
alias tzc='tar -cjf '
alias tgc='tar -czf '
alias tzx='tar -xjf '
alias tgx='tar -xzf '
alias fumount='sudo umount '
alias fmount='sudo mount -o loop '
#tool chain
alias runzynq='source /home/$USER/config_file/.bash_zynq'
alias runarmv7el='source /home/$USER/config_file/.bash_armv7el'
alias runarmv7hf='source /home/$USER/config_file/.bash_armv7hf'
alias runarmv832='source /home/$USER/config_file/.bash_armv8_32'
alias runarmv864='source /home/$USER/config_file/.bash_armv8_64'
alias runforlink_imx6='source /home/$USER/config_file/.bash_forlink_imx6'
alias rundrlimx6='source /home/$USER/config_file/.bash_drl600u'

alias addrout='sudo route add default gw 172.28.96.254 eno1'

alias xzc='xz -z '
alias xzx='xz -d '

alias apti='sudo apt-get install '
alias editalias='vi /home/$USER/.bash_aliases'

#data format
alias binformat='/home/$USER/config_file/binformat.sh '
alias hexformat='/home/$USER/config_file/hexformat.sh '
alias decformat='/home/$USER/config_file/decformat.sh '
alias rformat='/home/$USER/config_file/rformat.sh '

#kernel build command
alias mzc="make zynq_rp_defconfig"
alias mdtb='make dtbs'
alias mu='make uImage -j20'
alias makeuimage='mkimage -A arm64 -O linux -T kernel -C gzip -a 0x80080000 -e 0x80080000 -n linux-4.1 -d ./arch/arm64/boot/Image.gz uImage'

alias mm="make menuconfig"

alias makecpio="sudo find . | cpio -o -Hnewc |gzip -9 > "
alias makeramdisk="sudo mkimage -A arm -O linux -T ramdisk -n linux-4.9 -d  "

#ubuntu server
alias addroute='sudo route add default gw 172.28.96.254 eno1'
alias mufz='mkimage -A arm -O linux -T ramdisk -a 0x4000000   -n zynq   -d initramfs.zynq.ext4 initramfs.zynq.ext4.uboot'
#server



#cygwin


