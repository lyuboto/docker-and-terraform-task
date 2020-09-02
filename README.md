## Docker Task

###### Pre-requisites:
  - You must have Docker installed

###### What it does:
Creates a Docker image with the name nx, based on nginx:stable-alpine and serves a static web page, based on whatever is passed as a value of the variable nx_data. If no variable is defined, default webpage content is:
**WELCOME TO BLUBIRD :)**

###### How to use:
1. Build a Docker image:
  - cd dockertask
  - docker build -t nx .
2. Run the container:
  - docker run -d -e nx_data="*Your Text*" -p 1234:80 nx
3. Check webpage content:
  - curl 127.0.0.1:1234
4. Output should be the text you've defined as a value of the variable nx_data.
  - "*Your Text*"
## Terraform task

###### Pre-requisites:
  - You must have Terraform 0.12 installed
  - You must have Docker installed
  
###### What it does:
This is a Terraform deployment, which uses the already created Docker image to create a Docker container. It utilizes the Docker Terraform provider. It creates a Docker volume and attaches it to the container. At the end, it servers a static webpage with the content: **WELCOME TO BLUBIRD :)**.

###### How to use:
1. Initialize a working directory:
  - terraform init
2. Apply the Terraform file:
  - terraform apply
3. You will be prompted for names for:
  - The container
  - The volume
  - The network
4. After the deployment is complete, find the IP address of the container. You can use the name, which you chose for the container:
  - docker inspect *name* | grep IPAddress
5. Use the IP address to check the content of the webpage:
  - curl *IP Address*:80
6. The result should be: WELCOME TO BLUBIRD :)
