# 1 especifica imagem base
FROM alpine

# 2 baixar, executar e instalar dependências adicionais
# COPY . . COPIAR CONTEÚDO LOCAL NO CONTAINER
RUN apk add --update redis
RUN apk add --update gcc

# 3 qual comando tem que executar no container
CMD ["redis-server"]
