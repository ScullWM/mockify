FROM golang:1

# Install go packages
RUN go get github.com/gorilla/mux
RUN go get github.com/sirupsen/logrus

# Copy app contents
COPY app /app

# Build mockify
RUN go build -o main /app/cmd/mockify.go
