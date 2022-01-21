FROM golang:1.17-alpine
WORKDIR /app

COPY / ./
RUN go mod download

RUN go build -o /docker-gs-ping

CMD [ "/docker-gs-ping" ]