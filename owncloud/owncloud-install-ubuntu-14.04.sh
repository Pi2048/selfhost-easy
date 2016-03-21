echo 'deb http://download.owncloud.org/download/repositories/stable/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/owncloud.list
cd
wget -nv https://download.owncloud.org/download/repositories/stable/xUbuntu_14.04/Release.key -O Release.key
apt-key add - < Release.key
rm Release.key
apt-get update
apt-get install owncloud -y
ln -s /var/www/owncloud /usr/share/owncloud
service apache2 reload
