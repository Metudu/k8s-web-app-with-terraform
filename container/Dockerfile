FROM golang
WORKDIR /app
COPY . .
RUN go mod download && go mod verify
CMD [ "go", "run", "main.go" ]