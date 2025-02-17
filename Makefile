submit:
	docker exec da-spark-master spark-submit --master spark://spark-master:7077 --deploy-mode client ./apps/$(app)

build:
	docker compose build

up-build:
	docker compose up --build

up:
	docker compose up

down:
	docker compose down --volumes --remove-orphans

run:
	make down && docker compose up

run-scaled:
	make down && docker compose up --scale spark-worker=2

update-jup-deps:
	pip-compile jupiter/requirements/requirements.in

update-spark-deps:
	pip-compile spark/requirements/requirements.in

update-all-deps:
	make update-jup-deps && make update-spark-deps