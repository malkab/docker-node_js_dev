# Versions

Node:                   13.10.1
npm:                    6.13.7
yarn:                   1.22.0
Typescript:             3.8.3


## Run Notebook

Installs IJavaScript for using Node in Jupyter:

```shell
jupyter notebook --ip 0.0.0.0 --allow-root
```

Jupyter Notebooks read node_modules in the local folder. That means volatile containers can be used to install modules (yarn add) into the local node_modules and other volatile containers running a Notebook will be able to import or require locally installed modules.

