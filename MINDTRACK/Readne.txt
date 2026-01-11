Project – 1 MINDTRACK 

Infrastructure Setup:
The application was deployed using existing AWS infrastructure.
An EC2 instance was used for building and testing the Docker image.
Amazon EKS was used as the Kubernetes cluster to run the application containers.
No additional infrastructure automation tools were used for this project.

Version Control (GitHub):
The complete source code for the MindTrack application is stored in a GitHub repository.
Git was used to manage version control and push application changes.
Jenkins and CI automation were not used for this project.

Containerization (Docker):
The MindTrack application was containerized using Docker.
A Dockerfile was created to package the application along with its runtime dependencies.
The Docker image was built locally and tested to ensure the application runs correctly inside a container.
Container images were used directly during deployment.

Container Orchestration (Kubernetes – EKS):
Amazon EKS was used to deploy and manage the MindTrack application.
Kubernetes manifests were created for deployment and service configuration.
A Kubernetes Deployment was used to manage application pods.
A Kubernetes Service of type LoadBalancer was used to expose the application externally.
The application runs inside the container on its configured port and is accessed using the AWS LoadBalancer DNS endpoint.

Application Verification:
After deployment, Kubernetes resources were verified using kubectl commands.
Pods were confirmed to be in a running state, and the application was accessed successfully through the LoadBalancer URL.

