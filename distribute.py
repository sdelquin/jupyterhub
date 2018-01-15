import shutil
import os
import sys

with open("users.txt") as f:
    for line in f:
        username, _ = line.strip().split(",")
        os.system(
            "docker exec -ti jupyterhub cp -r /mnt/dist /home/" + username
        )
