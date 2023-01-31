# imagem:<versao>
FROM node:19

# definir o diretório de trabalho do container
WORKDIR /app 

# copiar o package.json para a imagem
# "." é o diretório /app
COPY package.json .

# instalar as dependências
RUN npm install

# copiar o código fonte para dentro da imagem
COPY . ./

# definir a porta nas varíaveis de ambiente
ENV PORT 4000

# iniciar o servidor
CMD ["node", "server.js"]