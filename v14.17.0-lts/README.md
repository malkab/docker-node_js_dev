# Versions

Node:                   14.17.0
npm:                    6.14.13
yarn:                   1.22.5
Typescript:             4.3.2
Angular:                ~12
Angular CLI:            12.0.3
Webpack:                5.38.1
Webpack CLI:            4.7.2
Webpack Dev Server:     3.11.2
SASS:                   1.34-1
TypeDoc:                0.20.36
Mocha:                  9.0.0
HTTP Server:            0.12.3


# User Mappings

This image maps the following users:

- **Linux:** UID / GID from 1000 to 1004;
- **MacOS:** UID/ GID from 500:20 to 504:20.


# Jupyter with TS and JS

This image is able to launch Jupyter Notebooks (also JupyterLab) with TypeScript and JavaScript:

```Shell
jupyter notebook --ip 0.0.0.0 --allow-root

jupyter lab --ip 0.0.0.0 --allow-root
```
