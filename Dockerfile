FROM janpfeifer/gonb_jupyterlab

COPY tutorial.ipynb ${NOTEBOOKS}/

WORKDIR ${HOME}/gonb
RUN go get github.com/redis/go-redis/v9 && \
    apt-get update -y && apt-get install redis-server -y 

ENTRYPOINT redis-server --daemonize yes && tini -g -- /usr/local/bin/check_and_run_autostart.sh