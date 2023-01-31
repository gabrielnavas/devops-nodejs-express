# cria a image do app
# -t é para definir uma tag
docker build -t node-app-image . 

# iniciar o container
# 1° -v mapear o código para /app, toda vez q mudar, atualizar o container também <meu_diretório>:<diretório_container>:<permissoes_de_escrita>
# 1 ° ro é read only
# 2° -v preservar o node_modules
# --name Dar um nome ao container
# -d para rodar via daemon
# -p <porta host>:<porta container>
# para inspecionar o sistema de arquivos do container: docker exec -it node-app bash
docker run \
  -v $(pwd):/app:ro \
  -v /app/node_modules \
  -d \
  --name node-app \
  -p 3000:3000 \
  node-app-image