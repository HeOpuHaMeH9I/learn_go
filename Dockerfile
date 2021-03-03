#FROM golang:1.16.0-buster as test
#ADD ./hello /hello
#WORKDIR /hello
#RUN ls /hello && go test

FROM golang:1.16.0-buster as build
ADD . /learn_go/
WORKDIR /learn_go
RUN go mod tidy && go build

FROM golang:1.16.0-buster
COPY --from=build /learn_go/learn_go /
EXPOSE 5051
CMD ["/learn_go"]