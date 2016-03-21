expression="s/#ServerName.*$/ServerName $1/"
cat /etc/apache2/sites-available/000-default.conf | sed -e "$expression" > /root/output
