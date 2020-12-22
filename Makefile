setup:
	python3 -m venv ~/.translateapplication
	source ~/.translateapplication/bin/activate
	

install:
	pip install --upgrade pip &&\
		pip install -r requirement.txt

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 translate.py

all: setup install lint