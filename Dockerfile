FROM docker
COPY . .
ENTRYPOINT ["./clean_docker.sh"]
