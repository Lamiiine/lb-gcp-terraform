#! /bin/bash     
sudo apt-get update\n
sudo apt-get install apache2 -y     
sudo a2ensite default-ssl    
sudo a2enmod ssl     
vm_hostname=\"$(curl -H \"Metadata-Flavor:Google\" \\\n   http://169.254.169.254/computeMetadata/v1/instance/name)\"\n   
sudo echo \"Page served from: $vm_hostname\" | \\\n   tee /var/www/html/index.html\n   sudo systemctl restart apache2