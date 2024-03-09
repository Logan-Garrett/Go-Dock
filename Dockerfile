FROM golang:1.22.0
WORKDIR /go-dock
COPY go.mod go.sum ./
RUN go mod download
COPY *.go ./
RUN CGO_ENABLED=0 GOOS=linux go build -o /Go-Dock
CMD ["/Go-Dock"]
RUN go run main.go
