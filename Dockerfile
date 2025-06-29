FROM golang:1.25rc1-alpine3.22

WORKDIR /app

# COPY . .
COPY index.html /usr/share/nginx/html/index.html  

RUN go build -o api  

EXPOSE 8899

CMD ["./api"] 