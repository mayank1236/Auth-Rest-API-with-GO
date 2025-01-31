FROM golang:1.19.2-bullseye as build
WORKDIR /app
COPY go.mod .
RUN go mod download
COPY . .
RUN go build -o app ./cmd/main.go

FROM alpine:latest as run
WORKDIR /app
COPY --from=build /app/app .
EXPOSE 8080
CMD ["/app"]