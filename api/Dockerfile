# check Dockerfile.development for just enough dockerfile used for development
# ref: https://docs.docker.com/language/golang/build-images/#multi-stage-builds
# build
ARG GO_VERSION=1.18
FROM golang:${GO_VERSION}-alpine as builder

WORKDIR /app

COPY go.mod ./
# COPY go.sum ./
# RUN go mod download

COPY *.go ./

RUN go build -o /api

EXPOSE 8080

# copy
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /api /api

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/api"]
