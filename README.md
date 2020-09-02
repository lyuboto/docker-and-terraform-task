What it does: 
Creates a Docker image with the name nx, based on nginx:stable-alpine and serves a static web page, based on whatever is passed as a value of the variable nx_data. If no variable is defined, default webpage content is:
WELCOME TO BLUBIRD :)

How to use:
1. Build a Docker image:
  - cd dockertask
  - docker build -t nx .
2. Run the container:
  - docker run -d -e nx_data="Your Text" -p 1234:80 nx
3. Check webpage content:
  - curl 127.0.0.1:1234
4. Output should be the text you've defined as a value of the variable nx_data.
  - "Your Text"
