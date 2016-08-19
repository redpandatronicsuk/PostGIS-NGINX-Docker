git clone https://github.com/openresty/docker-openresty.git
cd docker-openresty
# Add libpq-dev installation to Dockerfile:
#sed -i -e 's/build-essential/build-essential libpq-dev/g' docker-openresty/xenial/Dockerfile
docker build --build-arg RESTY_CONFIG_OPTIONS="--with-luajit --with-http_gzip_static_module --with-http_geoip_module --with-http_postgres_module" -t pgngx-openresty -f xenial/Dockerfile .
