from os import system

USERS = (
    "pepe",
    "juan",
    "maria",
    "lucia"
)

for user in USERS:
    system("adduser --disabled-password --gecos '' {}".format(user))
    system("echo {0}:{0} | chpasswd".format(user))
