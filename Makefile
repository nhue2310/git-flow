.PHONY: install

GIT_TAG := $(shell git describe --abbrev=0)

install:
	npm install

release:
ifeq ($(GIT_TAG), 0.0.1)
	npm run release -- --first-release
else
	npm run release
endif

demo: