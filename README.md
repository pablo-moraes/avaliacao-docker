#Apresentação dos scripts criados
[1]: 
[2]:

###Comando utilizados para verificar: 
####containers rodando:
docker ps -a -f status=running
####containers parados:
docker ps -a -f status=exited
####volumes existentes:
docker volume ls
####Excluir containers parados:
docker rm $(docker ps -qa -f status=exited)
####Excluir apenas volumes não utilizados:
docker volume ls –f dangling=true
####Criar um novo volume
docker volume create volume-pablo