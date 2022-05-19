# Versions

There is a command **versions** to check global package's versions.

Node:                   14.17.3
yarn:                   1.22.5
npm:                    6.14.13
Webpack:                5.45.1
Webpack CLI:            4.7.2
Webpack Dev Server:     3.11.2
Typescript:             4.3.5
Angular:                12.1.2
SASS:                   1.35.2
TypeDoc:                0.21.4
Mocha:                  9.0.2
HTTP Server:            0.12.3
Nodemon:                2.0.12


# User Mappings

This image maps the following users:

- **Linux:** UID / GID from 1000 to 1004;
- **MacOS:** UID/ GID from 500:20 to 504:20.


# Complete Docker Run Example

It looks more or less like this:

```shell
docker run -ti --rm \
  -e NODE_ENV=development \
  -e NODE_MEMORY=2GB \
  --name airo_experiments_node_dev \
  --hostname airo_experiments_node_dev \
  -v $(pwd)/../../:$(pwd)/../../ \
  -p 3000:3000 \
  --workdir $(pwd)/../../node \
  --user 1000:1000 \
  -v /home/malkab/.npmrc:/root/.npmrc \
  -v /home/malkab/.npmrc:/home/node/.npmrc \
  -v /home/malkab/.npmrc:/home/user1001/.npmrc \
  -v /home/malkab/.npmrc:/home/user1002/.npmrc \
  -v /home/malkab/.npmrc:/home/user1003/.npmrc \
  -v /home/malkab/.npmrc:/home/user1004/.npmrc \
  -v /home/malkab/.npmrc:/home/user500/.npmrc \
  -v /home/malkab/.npmrc:/home/user501/.npmrc \
  -v /home/malkab/.npmrc:/home/user502/.npmrc \
  -v /home/malkab/.npmrc:/home/user503/.npmrc \
  -v /home/malkab/.npmrc:/home/user504/.npmrc \
  malkab/nodejs-dev:16.13.2
```
