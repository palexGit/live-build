#!/bin/bash	

echo "greeter-setup-script=/usr/bin/numlockx on" | tee -a /usr/share/lightdm/lightdm.conf.d/01_debian.conf
touch $HOME/toto

###
# Modification du fichier /etc/ssh/sshd_config
sed -i -e "s/Port 22/Port 5789/g" /etc/ssh/sshd_config


####
# Ajout de font dans le repertoire /etc/fonts/conf.avail etc..
rm /etc/fonts/conf.d/70-no-bitmaps.conf
cat <<EOF > /etc/fonts/conf.avail/70-no-bitmaps.conf
<?xml version="1.0"?>
<!DOCTYPE fontconfig SYSTEM "fonts.dtd">
<fontconfig>
<!-- Reject bitmap fonts -->
<!-- Benoit -->
<selectfont>
  <rejectfont>
   <pattern>
     <patelt name="scalable"><bool>false</bool></patelt>
   </pattern>
  </rejectfont>
</selectfont>
</fontconfig>

EOF

ln -s /etc/fonts/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/70-no-bitmaps.conf




