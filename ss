sudo keytool -genkey -alias tomcat -keyalg RSA -keystore /etc/ssl/tomcat.keystore
sudo nano /etc/tomcat9/server.xml
sudo mkdir /etc/apache2/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/apache2/ssl/apache-selfsigned.key -out /etc/apache2/ssl/apache-selfsigned.crt
sudo nano /etc/apache2/sites-available/default-ssl.conf
SSLCertificateFile /etc/apache2/ssl/apache-selfsigned.crt
SSLCertificateKeyFile /etc/apache2/ssl/apache-selfsigned.key
sudo a2ensite default-ssl.conf
sudo systemctl reload apache2
