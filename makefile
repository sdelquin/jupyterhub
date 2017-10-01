build:
	docker build . -t jupyterhub
run:
	docker run --name jupyterhub -v $(shell pwd)/backup:/backup -p 8000:8000 jupyterhub
rm:
	docker rm jupyterhub
rmi:
	docker rmi jupyterhub
bk:
	docker exec -ti jupyterhub cp -a /home/. /backup/
restore:
	docker exec -ti jupyterhub cp -a /backup/. /home/
shell:
	docker exec -ti jupyterhub bash
