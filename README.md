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
For Packaging and Install the Helm Chart we have to run those commands
 helm package nodejs-app-chart
 helm install ashu-nodejs-app ./nodejs-app-chart-0.1.0.tgz
