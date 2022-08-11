# syntax=docker/dockerfile:1

FROM golang:1.17-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY . ./

RUN go build github.com/djfemz/simbaCodingChallenge


EXPOSE 8082

CMD ["go", "run", "./main.go"]
