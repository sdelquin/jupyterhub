FROM jupyterhub/jupyterhub:latest

RUN pip install jupyter

COPY users.py /root/users.py
RUN python /root/users.py
