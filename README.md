Docker:
create the Dockerfile 
then create a docker-compose.yml file
run 'docker-compose up' command, This command will build the Docker image for the Node.js application and start all three services (Node.js, MongoDB, and Redis) as separate containers. Now you can see Your Node.js application should now be running and able to connect to MongoDB and Redis 

Kubernetes:
Create a Kubernetes Deployment File as 'Nodejs-deployment.yaml'
then i Create a Kubernetes Service File 'nodejs-service.yaml'
after that, Create a Kubernetes Ingress File 'nodejs-ingress.yaml'
After creating those 3 YAML Files then i will apply those files in Kubernetes Cluster by those commands 
 kubectl apply -f Nodejs-deployment.yaml
 kubectl apply -f nodejs-service.yaml
 kubectl apply -f nodejs-ingress.yaml
After run those command it will create the Deployment, Service, and Ingress resources in the Kubernetes cluster.

Helm:
First i have to installed Helm on my kubernetes system and Then, i create a new Helm chart by the command
 helm create nodejs-app-chart
After creating 'nodejs-app-chart' directory, then go to the 'values.yaml' file to define parameters for the Node.js application. This values.yaml file allows you to customize parameters such as the Docker image, replica count, service configuration, and Ingress configuration.
In the templates directory of my Helm chart, i create those following Kubernetes resource templates:
 deployment.yaml
 service.yaml
 ingress.yaml
After editing those 3 files, For Packaging and Install the Helm Chart we have to run those commands
 helm package nodejs-app-chart
 helm install ashu-nodejs-app ./nodejs-app-chart-0.1.0.tgz
You can now manage your Node.js application deployment, service, and ingress in Kubernetes using Helm, and you can easily customize the configuration by editing the values.yaml file.

After complating all of the above [roce, now i am going to 
IN jenkins, in the Git section i put my REPO install the git webhooks plugin to enable the git action in git, when ever any change will be occur to my code it will reflect on jenkins server
 1. When ever any changes will be occur my previous dockerfile will be deleted and throush command it will create a new dockerfile through all ther services
 2. secondly through the docker compose command it will link-up all the services and up the application
 3. it will deploys the application in the Kubernetes cluster after any changes occurs in the docker container

Troubleshooting:
During this i faced some major issues, i.e,
1- Docker Build Failure : 
solution:
 investigate the application's configuration, logs, and entry point script to determine why it's exiting and aslo demonstarte the docker file  to  set the command for up the docker conatiner all the time.
2-Kubernetes Deployment Failure
solution :
Check Helm Chart and Values
Authenticate with Kubernetes Cluster
sometimes the nodes get offline so we have to validate it.

