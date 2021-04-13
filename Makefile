


build : 
	@echo " ---- BUILD ---- "
	@docker build -t spark-hadoop-cluster .

start :
	@echo " ---- START ---- "
	@chmod +x startHadoopCluster.sh
	@./startHadoopCluster.sh
restart :
	@echo " ---- RE-START ---- "
	@chmod +x re-start.sh
	@./re-start.sh
stop :
	@echo " ---- STOP/ REMOVE ---- "
	@chmod +x stop.sh
	@./stop.sh

connect :
	@echo " ---- MASTER NODE ---- "
	@chmod +x connect.sh
	@./connect.sh

master-ip : 
	@echo " ---- MASTER NODE IP ---- "
	@echo "Master node ip : " $(shell docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cluster-master)
