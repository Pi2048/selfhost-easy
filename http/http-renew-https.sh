cd ~
cd letsencrypt
./letsencrypt-auto renew --agree-tos
service apache2 reload 
