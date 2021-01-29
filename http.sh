pkg install apache2 openssh -y
rm -rf /data/data/com.termux/files/usr/var/run/apache2/httpd.pid
apachectl
ln -s / /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/s
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
ssh-keygen
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cp httpstart /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/httpstart
rm -rf ~/HTTP_SERVER_MEV
cd ~
httpstart
echo""
echo"this repo was fully created by Mevrick"
echo""
echo " to run the server again type : httpstart "
