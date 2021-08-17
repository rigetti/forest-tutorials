FROM rigetti/forest:3.0.0

# install jupyter notebook and jupyter lab
COPY binder-requirements.txt binder-requirements.txt
RUN pip install --no-cache-dir -r binder-requirements.txt

# create user with UID 1000 and associated home dir (required by binder)
ARG NB_USER=binder
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}
RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

WORKDIR ${HOME}

# copy tutorials
COPY notebooks notebooks

# transfer ownership of /home/binder to binder user
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

# signal that we need to publish port 8888 to run the notebook server
EXPOSE 8888

# run the notebook server
CMD ["jupyter", "lab", "--ip=0.0.0.0"]