# cria a image do app
# -t é para definir uma tag
docker build -t node-app-image . 

# iniciar o container
# 1° -v para mapear o código para /app, toda vez q mudar, atualizar o container também
# 2° -v para preservar o node_modules
# --name para dar um nome ao container
# -d para rodar via daemon
# -p <porta host>:<porta container>
# para inspecionar o sistema de arquivos do container: docker exec -it node-app bash
docker run \
  -v $(pwd):/app \
  -v /app/node_modules \
  -d \
  --name node-app \
  -p 3000:3000 \
  node-app-image