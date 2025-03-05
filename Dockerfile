FROM janpfeifer/gonb_jupyterlab

COPY tutorial.ipynb ${NOTEBOOKS}/

WORKDIR ${HOME}/gonb
RUN go get github.com/redis/go-redis/v9 && \
    apt-get update -y && apt-get install redis-server -y 

ADD entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["tini", "-g", "--", "/usr/local/bin/entrypoint.sh"]