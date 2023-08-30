.PHONY: help setup teardown

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

teardown:
	rm -rf node_modules

node_modules:
	npm install
