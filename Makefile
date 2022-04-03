ATH_FILE ?= test.ath

all: image run

image: Dockerfile mount-dir
	docker build -t athena-image .

run:
	docker run --name athena-container -t -d -v $(PWD)/mnt:/mnt athena-image:latest bash

run-interactive:
	docker run --name athena-container -it -v $(PWD)/mnt:/mnt athena-image:latest bash

check-athena: test.ath

mount-dir:
	mkdir ./mnt && echo 'module TestFile {\ndomain Person\n}' > ./mnt/test.ath

clean:
	docker container stop athena-container && \
	docker container rm athena-container && \
	docker image rm athena-image && \
	mkdir saved && \
	cp -r mnt/ cached/ && \
	rm -rf mnt

%.ath:
	docker container exec athena-container athena /mnt/$@