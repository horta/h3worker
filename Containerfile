FROM docker.io/alpine
LABEL maintainer="danilo.horta@pm.me"
COPY --from=quay.io/danilohorta/hmmer-builder:latest /hmmer/src/hmmpgmd /usr/local/bin/hmmpgmd
COPY h3worker /usr/local/bin/h3worker
COPY healthcheck /usr/local/bin/healthcheck
RUN chmod 755 /usr/local/bin/h3worker
RUN chmod 755 /usr/local/bin/healthcheck
ENTRYPOINT ["h3worker"]
