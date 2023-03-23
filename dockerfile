FROM ubuntu AS build
RUN apt-get update -y && apt install golang-go -y
ENV GO111MODULE=off
COPY . .
RUN CGO_ENABLED=0 go build -o /app .

#####################
# MULTI STAGE BUILD #
#####################

FROM scratch
COPY --from=build /app /app
ENTRYPOINT ["/app"]
