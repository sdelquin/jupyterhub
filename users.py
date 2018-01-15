from os import system

with open("/root/users.txt") as f:
    for line in f:
        username, password = line.strip().split(",")
        system("adduser --disabled-password --gecos '' {}".format(username))
        system("echo {}:{} | chpasswd".format(username, password))
