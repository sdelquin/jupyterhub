build:
	docker build . -t jupyterhub
run:
	docker run --name jupyterhub -v $(shell pwd)/mnt:/mnt -p 8000:8000 jupyterhub
rm:
	docker rm jupyterhub
rmi:
	docker rmi jupyterhub
bk:
	docker exec -ti jupyterhub cp -a /home/. /mnt/backup
restore:
	docker exec -ti jupyterhub cp -a /mnt/backup/. /home/
shell:
	docker exec -ti jupyterhub bash
dist:
	python distribute.py
