# Docker Compose

Este projeto utiliza **Docker Compose** para orquestrar os seguintes serviços:
- **Zookeeper**
- **Kafka**
- **MongoDB**
- **Storm**
- **Spark**
- **Flume**


## Requisitos

Certifique-se de que você tenha os seguintes softwares instalados:
- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Como usar

### Subir todos os serviços em background
Para iniciar todos os serviços definidos no arquivo `docker-compose.yml` em segundo plano, execute:

```
docker-compose up -d
```
### Subir serviços específicos
Para subir apenas o Zookeeper e Kafka, por exemplo, especifique-os no comando:
```
docker-compose up zookeeper kafka
```

### Parar e remover todos os serviços
```
docker-compose down
```

### Construir imagens personalizadas
Nesse projeto, algumas imagens são configuradas para serem construídas a partir do Dockerfile definido no repositório. Para garantir que a imagem do flume, por exemplo, seja construída execute:
```
docker-compose up --build flume
```

### Verificar logs de um serviço específico
Para visualizar os logs de um serviço específico, como o kafka, execute:
```
docker-compose logs kafka
```

### Verificar status dos serviços
Para verificar os status de todos os serviços em execução, execute:
```
docker-compose ps
```

### Parar e reiniciar serviços específicos
Para parar um serviço específico, execute:
```
docker-compose stop nome-do-servico
```
E para reiniciar: 
```
docker-compose restart nome-do-servico
```

### Variáveis de ambiente

É necessário configurar as variáveis de ambiente para utilizar o MongoDB. Essas configurações devem feitas no arquivo **.env**, onde você definirá o nome de usuário e a senha para o MongoDB:
```
MONGO_INITDB_ROOT_USERNAME=seu-usuario
MONGO_INITDB_ROOT_PASSWORD=sua-senha
```
