.PHONY: help setup teardown build clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

teardown:
	rm -rf node_modules

node_modules:
	npm install

build: \
	dist \
	dist/index.js

clean:
	rm -rf dist

dist/index.js: src/index.tsx
	npx esbuild src/index.tsx --bundle --minify --sourcemap --outfile=$@

dist:
	mkdir -p $@
