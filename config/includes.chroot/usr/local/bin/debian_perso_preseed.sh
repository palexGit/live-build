#!/bin/bash	

echo "greeter-setup-script=/usr/bin/numlockx on" | tee -a /usr/share/lightdm/lightdm.conf.d/01_debian.conf
touch $HOME/toto

###
# Modification du fichier /etc/ssh/sshd_config
sed -i -e "s/Port 22/Port 5789/g" /etc/ssh/sshd_config


####
# Ajout de font dans le repertoire /etc/fonts/conf.avail etc..
#cat <<EOF > /etc/fonts/conf.avail/70-no-bitmaps.conf
#<?xml version="1.0"?>
#<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
#<fontconfig>
#<!-- Reject bitmap fonts -->
#<selectfont>
#  <rejectfont>
#   <pattern>
#     <patelt name="scalable"><bool>false</bool></patelt>
#   </pattern>
#  </rejectfont>
#</selectfont>
#</fontconfig>
#
#EOF

#ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/70-no-bitmaps.conf


#cd /home/$USER/app
#chmod +x VBoxLinuxAdditions.run
#./VBoxLinuxAdditions.run


