# CI Interview

Your goal will be to setup a CI pipeline and cloud infrastructure
to deploy a multi tier application into two environments.
The CI pipeline will be implemented with Jenkins while
the cloud infrastructure is largely your choice.



### Goals

To demonstrate your ability to design a CI pipeline
deploys an application.

1. Design and implement the CI pipeline using Jenkins
2. Deploy the application to __dev__ and __prod__ environments in GCP

You will be assesed by the implementation and a code review meeting.

- Does the application deploy to two environments as specified
- The design of the Jenkins Pipeline and use of DevOps tools


The repository should contain all code, IaC files, and documentation

- Any Terraform, Packer, Ansible or other files needed for the implementation
- Documentation for how CI works and how it could be improved
- Live demonstration deploying to both environments as triggered by commits
- Discussion about implementation, design choices and how you would improve your implementation




### Setup

You will have access to

- a GCP project with editor permissions
    - A single node Jenkins instance will already be running. Access instructions are below.
- A starting repository which contains
    - A "Hello World" Jenkinsfile
		- An existing application with prebuilt containers
    - Docker Compose file to demonstrate the running application.


		


### CI Pipeline

You should implement CI by modifying the existing `Jenkinsfile` Jenkins Pipeline.

- regular commits to the repository should trigger the __dev__ deployment
- tagged commits to the repository should trigger the __prod__ deployment

- Use Terraform, Ansible, and Packer as you deem necessary for your solution.
- The files should be committed to the repository and run from the CI pipeline.

You should deploy the application automatically
from the CI pipeline (Jenkinsfile(s)) into
two environments: `dev` and `prod`.
The setup for each does not need to be the same
and you have flexibility to choose the technologies and methods.


### Guidelines for sizing

- You do not need high-availability, we are more interested in the workflow and CI design
- We want to see that you can use the technologies we use
- You can discuss how a more robust deployment can be achieved in the supplimentary documenation


