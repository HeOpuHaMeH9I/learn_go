#FROM golang:1.16.0-buster as test
#ADD *.go go.mod /learn_go/
#WORKDIR /learn_go
#RUN go test

FROM golang:1.16.0-buster as build
ADD . /learn_go/
WORKDIR /learn_go
RUN go mod tidy && go build

FROM golang:1.16.0-buster
COPY --from=build /learn_go/learn_go /
CMD ["/learn_go"]