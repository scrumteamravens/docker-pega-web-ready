TAG = "qualitytest"
PREFIX = arvasrikanth
REPO_NAME = "docker-pega-web-ready"

all: image

container: image

image:
	docker build -t $(PREFIX)/$(REPO_NAME):$(TAG) . --target qualitytest # Build image for executing test cases against it
	docker build -t $(PREFIX)/$(REPO_NAME) . # Build image and automatically tag it as latest

push: image
	docker push $(PREFIX)/$(REPO_NAME) 
