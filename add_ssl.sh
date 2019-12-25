#!/bin/bash
echo "1. Generating self signed SSL certificate"
echo "   Most important field is the FDQN field (use:`hostname`)"
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
sudo openssl dhparam -out /etc/nginx/dhparam.pem 4096

echo "2. Copying ssl configuration files for nginx"
sudo cp fermentrack-ssl-params.conf /etc/nginx/snippets/fermentrack-ssl-params.conf
sudo cp fermentrack-self-signed.conf /etc/nginx/snippets/fermentrack-self-signed.conf
sudo cp default-fermentrack /etc/nginx/sites-available/default-fermentrack

echo "3. Restarting nginx"
#sudo nginx -t
sudo systemctl restart nginx
#openssl s_client -connect localhost:443
