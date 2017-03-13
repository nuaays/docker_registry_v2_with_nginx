


##Docker Registry Native
* https://github.com/nuaays/Miscellaneous_Scripts/tree/master/docker-registry-native-compose
* https://github.com/nuaays/Miscellaneous_Scripts/tree/master/docker-registry-native

##Docker Registry Nginx
* https://github.com/nuaays/Miscellaneous_Scripts/tree/master/docker-registry



##Reference
* https://github.com/docker/distribution/tree/release/2.0/contrib/compose/nginx
* https://github.com/othillo/docker-registry-nginx/blob/master/nginx/nginx.conf




##usage of htpasswd
http://blog.csdn.net/fdipzone/article/details/41020045

* htpasswd安装
```
[Ubuntu] apt-get -y install apache2-utils
[CentOS] yum install httpd-tools

```

* htpasswd生产密码

```
htpasswd -nb[mdps] username password
docker run --entrypoint htpasswd registry:2.4.1 -Bbn username password >> .htpasswd

```
