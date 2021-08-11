build:
	docker build -t rendyananta/jenkins-agent-docker-cli -f Dockerfile .

push:
	docker push rendyananta/jenkins-agent-docker-cli