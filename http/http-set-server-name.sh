expression="s/#ServerName.*$/ServerName $1/"
sed "$expression" -i /etc/apache2/sites-available/000-default.conf
service apache2 reload
