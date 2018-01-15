FROM jupyterhub/jupyterhub:latest

# for converting the notebook to PDF
RUN apt-get update && \
    apt-get install -y texlive-xetex

# python libraries
RUN pip install jupyter
                pandas \
                numpy \
                scipy \
                matplotlib \
                seaborn

# management of users
COPY users.txt /root/users.txt
COPY bootstrap.py /root/bootstrap.py
RUN python /root/bootstrap.py
