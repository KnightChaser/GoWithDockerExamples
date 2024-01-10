FROM golang:1.20-buster AS gobuilder
COPY hello.go /app/hello.go
WORKDIR /app
RUN go build -o hello hello.go

FROM scratch
COPY --from=gobuilder /app/hello /
CMD ["/hello"]
