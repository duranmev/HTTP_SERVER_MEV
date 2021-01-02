pkg install apache2 openssh -y
ln -s / /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/s
rm -rf /data/data/com.termux/files/usr/var/run/apache2/httpd.pid
apachectl
touch ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
ssh-keygen
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
cp apachectlstart /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/apachectlstart
ssh -R 80:localhost:8080 ssh.localhost.runq