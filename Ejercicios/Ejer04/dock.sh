mkdir -m 777 src
echo "SITIO WEB DE MIO" > src/index.html
echo "FROM nginx" >> Dockerfile
echo "COPY /src /usr/share/nginx/html" >> Dockerfile
echo "EXPOSE 80" >> Dockerfile
docker build -t guinea .
docker run --name bissau -d -p 80:80 guinea
curl localhost
