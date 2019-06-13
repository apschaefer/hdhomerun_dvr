# Create the image
docker build -t hdhomerun_dvr .
# Add firewall rules - CENTOS step
cp hdhomerun_record.xml /usr/lib/firewalld/services/
systemctl reload firewalld
firewall-cmd --add-service hdhomerun_record
