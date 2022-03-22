git pull

#删除docker容器
docker rm -f nginx8080 &> /dev/null

#启动容器
docker run -d --restart=on-failure:10 -p 8080:80 -v $PWD/dist:/user/share/nginx/html --name nginx8080 nginx