# Minimal makefile for building and publishing pypub

DIST = sdist bdist_wheel

build: clean setup

clean:
	rm -rf build/ dist/ .eggs/ *.egg-info/

setup:
	python3 setup.py $(DIST)


publish-test:
	twine upload -r testpypi dist/*

