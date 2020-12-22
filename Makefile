setup:
	python3 -m venv ~/.translateapp
	source ~/.translateapp/bin/activate
	

install:
	pip install --upgrade pip &&\
		brew install hadolint &&\
		pip install -r requirement.txt

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 translate.py

all: setup install lint