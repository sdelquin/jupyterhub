FROM jupyterhub/jupyterhub:latest

RUN pip install jupyter

COPY users.txt /root/users.txt
COPY users.py /root/users.py
RUN python /root/users.py
