
#### Reference ####
#http://blog.csdn.net/ljf10010/article/details/47952849
#https://www.digitalocean.com/community/tutorials/how-to-set-up-a-private-docker-registry-on-ubuntu-14-04
#nginx conf: http://www.cszhi.com/20120513/nginx_nginx-conf.html


#clean
rm -rf registry_v2_data

#set server_name
cp -f nginx/registry.conf.sample nginx/registry.conf
cp -f nginx/nginx.conf.sample    nginx/nginx.conf
hostipaddr=`hostname -i | awk '{print $1}'`
sed -i "s/_SERVER_NAME_/$hostipaddr/g" nginx/registry.conf


#### if enable basic auth using password
#### [Ubuntu] apt-get install -y apache2-utils [CentOS] yum install -y httpd-tools
#yum install -y httpd-tools
#htpasswd -bn test abcd1234 > nginx/registry.passwd
#sed -i "s/#auth_basic/auth_basic/g" nginx/registry.conf

#install docker-compose
#download directly
#wget https://github.com/docker/compose/releases/download/1.10.1/docker-compose-Linux-x86_64 -O /usr/bin/docker-compose
#wget https://dl.bintray.com/docker-compose/master/:docker-compose-Linux-x86_64 -O /usr/bin/docker-compose
#or
#curl -L https://github.com/docker/compose/releases/download/VERSION_NUM/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
#chmod +x /usr/local/bin/docker-compose
#or
#yum install -y python-pip
#pip install docker-compose -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

#docker-compose up
#docker pull nginx:latest
#docker pull registry:2.5
docker-compose up
