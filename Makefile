install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv hello_test.py


lint:
	pylint --disable=R,C hello.py

all: install lint test
