dir="../root"
sudo cp -r /usr/my.cnf  ${dir}/usr/my.cnf
sudo cp -r /etc/httpd/* ${dir}/etc/httpd/
sudo cp -r /etc/nginx/* ${dir}/etc/nginx/
#sudo cp -r /etc/varnish ${dir}/etc/

#sudo cp /etc/sysconfig/varnish    ${dir}/etc/sysconfig/
sudo cp /etc/supervisord.conf     ${dir}/etc/supervisord.conf
sudo cp /etc/sysconfig/memcached  ${dir}/etc/sysconfig/memcached
sudo cp /etc/sysctl.conf          ${dir}/etc/sysctl.conf
sudo cp /etc/init.d/memcached     ${dir}/etc/init.d/
