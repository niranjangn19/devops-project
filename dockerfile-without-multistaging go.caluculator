FROM ubuntu
RUN apt-get update -y && apt install golang-go -y
ENV GO111MODULE=off
COPY . .
RUN CGO_ENABLED=0 go build -o /app .
ENTRYPOINT ["/app"]
