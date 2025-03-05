FROM janpfeifer/gonb_jupyterlab

# COPY tutorial.ipynb ${NOTEBOOKS}/

# WORKDIR ${HOME}/gonb
# RUN go get github.com/redis/go-redis/v9 && \
#     apt-get update -y && apt-get install redis-server -y 

# USER root
# ADD entrypoint.sh /root/autostart/autostart.sh
# RUN chmod 500 /root/autostart/autostart.sh
