Project 2 – TREND STORE

Infrastructure Setup (Terraform)

Terraform was used to provision the AWS infrastructure required for this project. A custom VPC and public subnet were created along with an Internet Gateway and route table. Security groups were configured to allow Jenkins and application access. An EC2 instance was provisioned to host Jenkins. All infrastructure was created using Infrastructure as Code to ensure consistency and repeatability.

Version Control (GitHub)

The complete application source code is maintained in a GitHub repository. A .gitignore file is used to prevent unnecessary files from being pushed to the repository. Jenkins pulls the latest code from GitHub whenever the pipeline is triggered.

Containerization (Docker and DockerHub)

The React application was containerized using Docker. An Nginx-based Docker image is used to serve the application. Jenkins builds the Docker image and pushes it to DockerHub under the repository karthi271/trend-store. This ensures the application runs consistently across different environments.

CI/CD Pipeline (Jenkins)

Jenkins was installed and configured on an EC2 instance to manage the CI/CD process. The Jenkins pipeline performs source code checkout from GitHub, builds the Docker image, pushes the image to DockerHub, and deploys the application to Amazon EKS using Kubernetes manifests. The pipeline can be triggered manually or through repository updates.

Container Orchestration (Kubernetes – EKS)

Amazon EKS was used to deploy and manage the application containers. Kubernetes Deployment is used to manage pods and replicas, and a Kubernetes Service of type LoadBalancer is used to expose the application publicly. The application runs on port 3000 inside the container and is exposed externally on port 80.