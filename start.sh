git pull
yarn run build
#删除docker容器
docker rm -f nginx8080 &> /dev/null
echo '脚本运行'

#启动容器
docker run -d --restart=on-failure:10 -p 8080:80 -v $PWD/dist:/usr/share/nginx/html --name nginx8080 nginx
echo '启动容器'
echo $PWD