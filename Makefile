include docker.mk

.PHONY: test

PYTHON_VER ?= 3.7

test:
	cd ./tests && PYTHON_VER=$(PYTHON_VER) ./run.sh
