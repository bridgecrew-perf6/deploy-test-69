git pull
yarn run build
#删除docker容器
docker stop nginx8080
docker rm -f nginx8080
#启动容器
docker run -d --restart=on-failure:10 -p 8080:80 -v $PWD/deploy-test/dist:/usr/share/nginx/html --name nginx8080 nginx
echo $PWD
echo '重新打包'