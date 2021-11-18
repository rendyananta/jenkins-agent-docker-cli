build:
	docker build -t rendyananta/jenkins-agent-k8s -f Dockerfile .

push:
	docker push rendyananta/jenkins-agent-k8s