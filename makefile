build:
	docker build . -t jupyterhub
run:
	docker run --name jupyterhub -p 8000:8000 jupyterhub
rm:
	docker rm jupyterhub
rmi:
	docker rmi jupyterhub
