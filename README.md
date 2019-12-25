# Fermentrack-SSL
                
#### A script to enable SSL on a fermentrack installation

This script will generate a self signed certificate and install it for fermentrack. 

WARNING! Most modern web browsers will generate an error and require an action to accept this self signed certificate.

#### Installation

The user executing the script needs to have sudo priviligies. The fermentrack user will not suffice. Login as pi.

#### Rollback

Replace the file /etc/nginx/sites-available/default-fermentrack with the default file from /home/pi/fermentrack-tools/nginx-configs
