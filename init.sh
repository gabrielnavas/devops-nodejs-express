# para iniciar, use sh init.sh <nome da funcao>

dev_init () {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
}

dev_init () {
  docker-compose -f docker-compose.yml -f docker-compose.dev.yml down -v
}

production_init() {
  docker-compose -f docker-compose.yml -f docker-compose.production.yml up -d
}

production_down() {
  docker-compose -f docker-compose.yml -f docker-compose.production.yml down
}

$1