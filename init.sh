# para iniciar, use sh init.sh <nome da funcao>

dev_up () {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d --build
}

dev_down () {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml down -v
}

production_up () {
  docker-compose -f docker-compose.yml -f docker-compose.production.yml up -d --build
}

production_down () {
  docker-compose -f docker-compose.yml -f docker-compose.production.yml down -v
}

$1