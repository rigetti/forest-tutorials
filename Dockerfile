# build image from a tagged forest-notebook image
FROM rigetti/forest-notebook:3.0.0

# copy over files from binder repository into $HOME
COPY . ${HOME}

# set working directory to $HOME
WORKDIR ${HOME}
