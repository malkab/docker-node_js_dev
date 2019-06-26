# Dockerized Node.js

Node.js development Docker images. For testing things and development.
Some global packages are included:

- webpack
- webpack-cli
- mocha
- SASS
- TypeDoc
- npm
- Angular CLI
- webpack-dev-server
- http-server



## Running Containers

Take into account that the image default **entrypoint** is a bash
session. In other develpment scenarios the entrypoint is frequently
**npm start**, so change it accordingly in Docker-Compose stacks.



## Tags

Available tags:

- **v9.10.1:** with Node.js version 9.10.1;

- **v10.9.0:** with Node.js version 10.9.0;

- **v10.13.0:** Node.js version 10.13.0;

- **v10.15.2:** Node.js version 10.15.2;

- **v10.16.0:** Node.js version 10.16.0.
