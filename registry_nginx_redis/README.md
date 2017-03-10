## Docker Registry V2 with auth using Nginx


####How to launch this Docker Registry
```
install docker-compose firstly:  pip install docker-compose 

[start] docker-compose up -d  
[stop ] docker-compose stop  
[remove] docker-compose rm  
```


####How to create/add/del users
```
[create] htpasswd -c registry.passwd ${username}
[  add ] htpasswd registry.passwd ${username} 
[  del ] htpasswd -D ${username}

```

####How to pull/push images to this registry
```
1.docker login --username=test --password=test --email=**@zhongan.com ${registry_ip}:5000  
2.test curl -u test:test ****:5000/v2/_catalog 
3.[pull] docker pull ****:5000/swarm:latest  
  [push] docker tag  ** && docker push 

```
