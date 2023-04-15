FROM alpine:3.17

RUN apk add --no-cache curl; \
  curl -sSf https://temporal.download/cli.sh | sh
ENV PATH="/root/.temporalio/bin:${PATH}"
ENTRYPOINT ["temporal"]
