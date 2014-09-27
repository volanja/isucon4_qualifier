dir="../root"
sudo service httpd stop

sudo cp ${dir}/usr/my.cnf /usr/my.cnf
#sudo cp -r /etc/httpd/* etc/httpd/
sudo cp -r ${dir}/etc/nginx/* /etc/nginx/
#sudo cp -r ${dir}/etc/varnish/* /etc/varnish/
sudo cp ${dir}/etc/sysctl.conf          /etc/sysctl.conf
#sudo cp ${dir}/etc/supervisord.conf     /etc/supervisord.conf
#sudo cp ${dir}/etc/sysconfig/memcached  /etc/sysconfig/memcached
#sudo cp ${dir}/etc/init.d/memcached     /etc/init.d/memcached
#sudo cp ${dir}/etc/sysconfig/varnish    /etc/sysconfig/varnish

#sudo service varnish restart
sudo service mysql restart
sudo service nginx restart
#sudo service memcached restart
sudo service supervisord stop
sleep 2
sudo service supervisord start
sleep 4
sudo service supervisord status

