deps: 
	pip insta requirements.txt 
	pip install -r test_requirements.txt 
run:
	python main.py
.PHONY: test
test:
	PYTHONP=. py.test --verbose -s
lint: 
	flake8 hello_world test 
docker_build:
	docker build -t hello-world-printer .
