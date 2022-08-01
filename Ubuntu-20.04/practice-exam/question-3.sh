# As a Linux System administrator you will often be tasked with maintaining webservers.  
# Sometimes you will want to change the default behavior of the apache2 service to accomidate your needs.
#
# 1. Update the port that the apache2 service listens on from 80 to 1990.  
# 2. Ensure these changes are persistent 
#
# --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


vim /etc/apache2/ports.conf
# change ports
systemctl restart apache2

netstat -tulpn | grep apache2

