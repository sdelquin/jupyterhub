# JupyterHub

*Dockerfile* to launch an instance of [JupyterHub](https://jupyterhub.readthedocs.io). This allows multiple users to have their own *Python* environment on *Jupyter Notebook*.

## Usage

1. Add usernames and passwords (separated by `,`) to the file `users.txt`

2. Build the image:

~~~console
$ make build
~~~

> Esto creará una imagen con nombre `jupyterhub`

3. Run the container:

~~~console
$ make run
~~~

4. Access [http://127.0.0.1:8000](http://127.0.0.1:8000).


## Tools

In case you want to *backup the HOMEs*, you can do:

~~~console
$ make bk
~~~

> The backup goes to `$PWD/mnt/backup`  
> The container must be running.

In case you want to *restore the HOMEs*, you can do:

~~~console
$ make restore
~~~

> The backup is taken from `$PWD/mnt/backup`  
> The container must be running.

In case you want to *distribute some files*, first copy the desired files to `$PWD/mnt/dist` and:

~~~console
$ make dist
~~~

> The files are copied to the HOMEs of the users.  
> The container must be running.
