# Setup

install the pip-tools (for requirements management)
```shell
pip install pip-tools
```

generate the requirements.txt
```shell
pip-compile requirements/requirements.in
```

## Build the env-t from docker-compose
```shell
docker-compose up --build
```

## Check the status
the master node will be available from `localhost:9090` 
the history `localhost:18080`

## Submit first job
submit spark job
```shell
docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client ./apps/$(app)
```

ex:
```
docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client ./apps/word_task.py
```

# Make commands
In order to automate common tasks this repo contains a `Makefile`.
Here are some examples:
In order to submit the tasks
```shell
make submit app=my_task_file.py
```
In order to shut down the env-t
```shell
make down
```

