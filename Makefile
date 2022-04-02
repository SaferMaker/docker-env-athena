image: Dockerfile
	sudo docker build -t athena-image .

run:
	sudo docker run -it -v $(PWD)/mnt:/mnt athena-image:latest bash
