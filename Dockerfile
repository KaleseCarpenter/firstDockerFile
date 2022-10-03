FROM golang

WORKDIR /app 

ENV PORT=8005
COPY main.go go.mod ./

RUN go mod download
RUN go build -o ./web

EXPOSE 8005

CMD ["./web"]