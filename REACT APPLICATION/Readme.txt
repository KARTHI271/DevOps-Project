Project 3 – React Application

AWS EC2 Setup
An AWS EC2 instance running Ubuntu Linux was created to host the application and all required DevOps tools. The security group was configured carefully so that HTTP traffic (port 80) is open to everyone for application access and SSH access (port 22) is restricted to the developer’s IP address only. This setup ensures the application is publicly accessible while keeping server access secure.

Source Code Management (GitHub)
The source code for this project is stored in a public GitHub repository. A proper branching strategy is followed where the dev branch is used for development and testing and the main branch is used for production-ready code. All changes are first pushed to the dev branch. After successful testing, the dev branch is merged into the main branch, which triggers production deployment.

Docker & Docker Hub
The React application is containerized using Docker. A Dockerfile is used to build the React application and serve it using Nginx, making it suitable for production use. Docker images are pushed to Docker Hub using two repositories: karthi271/react-app-dev for development builds and karthi271/react-app-prod for production builds. This separation ensures that development and production environments remain independent.

Bash Scripting
To automate repetitive tasks, Bash scripts were created. build.sh is used to build and tag the Docker image, and deploy.sh is used to deploy the application container on the EC2 instance. These scripts simplify manual execution and also align with the automation used inside the Jenkins pipeline.

Jenkins CI/CD Pipeline
Jenkins is installed and configured on the EC2 instance to manage continuous integration and deployment. A declarative Jenkins pipeline is defined using a Jenkinsfile. The pipeline pulls the latest source code from GitHub, builds the Docker image, pushes the image to Docker Hub, and deploys the application automatically on the EC2 instance. Branch-based logic is used where a push to the dev branch builds and pushes the dev Docker image, and a merge from dev to main builds the production image and deploys it. This ensures a clean and automated CI/CD flow.

Application Deployment
The production Docker image is deployed on the EC2 instance as a container and exposed on port 80. Once deployed, the application can be accessed using the EC2 public IP address through a web browser.

Monitoring
To monitor application availability, Uptime Kuma, an open-source monitoring tool, was deployed using Docker. It continuously checks the application endpoint and displays its health status on a dashboard. This helps ensure that the application is running as expected and provides visibility into uptime.
