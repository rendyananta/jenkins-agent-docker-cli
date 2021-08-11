### Custom Image Jenkins Agent

There is a problem when running jenkins agent as a pod in Kubernetes Cluster. The jenkins agents does not have docker CLI pre installed on image.

This custom image solve a problem to use Docker plugin within jenkins agent using external Docker Host. Hence, you cannot run a docker inside the container unless using docker-in-docker, but it has several issues in mounting unix socket volume in jenkins agent container. However, making sure Docker CLI is installed on each nodes running kubernetes cluster is mandatory. It will add more complexity at the end. This clear separation server makes development and maintenance easier and gives more concerns each services.

Project like Kaniko, cannot address this issue because of application purpose on building and pushing docker image. Several weaknesses if using Kaniko is you are not able to running container and perform an integration tests. 