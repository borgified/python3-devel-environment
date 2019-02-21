0. git clone https://github.com/borgified/python3-devel-environment.git
1. mv python3-devel-environment your-repo-name
2. cd your-repo-name
3. rm -rf .git
4. git init
5. `vi dockerfiles/Dockerfile` and modify as necessary to include other tools that you might need
6. `make build` to build your docker image
7. `make run` to run the newly built image
