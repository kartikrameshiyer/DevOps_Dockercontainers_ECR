setup:
	python3 -m venv ~/.translateapp
	source ~/.translateapp/bin/activate
	

install:
	pip install --upgrade pip &&\
		wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
        chmod +x /bin/hadolint &&\
		pip install -r requirement.txt

validate-circleci:
	circleci config process .circleci/config.yml

run-circleci-local:
	circleci local execute

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 translate.py

all: setup install lint