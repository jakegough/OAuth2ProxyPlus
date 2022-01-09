PHONY: build

build:
	docker build -t jakegough/oauth2-proxy-plus .

push: build
	docker push jakegough/oauth2-proxy-plus
