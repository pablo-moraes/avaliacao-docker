# Apresentação dos scripts criados
Neste repositório estão guardados os scripts utilizados
Você pode encontrar o [docker-compose.yml][2] e o [Dockerfile][1]
### Comando utilizados para verificar: 
#### containers rodando:
`docker ps -a -f status=running`
#### containers parados:
`docker ps -a -f status=exited`
#### volumes existentes:
`docker volume ls`
#### Excluir containers parados:
`docker rm $(docker ps -qa -f status=exited)`
#### Excluir apenas volumes não utilizados:
`docker volume ls –f dangling=true`
#### Criar um novo volume
`docker volume create volume-pablo`

[1]: https://github.com/pablo-moraes/avaliacao-docker/blob/master/Dockerfile
[2]: https://github.com/pablo-moraes/avaliacao-docker/blob/master/docker-compose.yml