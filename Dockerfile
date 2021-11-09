FROM appleboy/drone-ecr

COPY entrypoint.sh /entrypoint.sh
RUN mkdir -p .docker
COPY /home/runner/.docker/config.json /root/.docker/
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
