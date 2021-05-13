FROM golang
ADD . /go/src/github.com/google/web-api-gateway-final
RUN go get github.com/grisreyes-jelly/web-api-gateway-final/tree/master/server
RUN go install github.com/grisreyes-jelly/web-api-gateway-final/tree/master/server
RUN go install github.com/google/web-api-gateway/setuptool@latest
RUN go install github.com/google/web-api-gateway/connectiontest@latest

ENTRYPOINT ["/go/bin/server"]

EXPOSE 443
