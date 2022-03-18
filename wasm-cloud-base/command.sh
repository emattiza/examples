export GP_HTTPS_HOST=$(gp url 4000)
export GP_HOST=$(echo "$GP_HTTPS_HOST" | sed s#https://##)
export DIR=$(pwd)
echo "127.0.0.1\tregistry" | sudo tee -a /etc/hosts > /dev/null
docker-compose -f wasm-cloud-base/docker-compose.yml up
