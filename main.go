package main

import (
	log "github.com/sirupsen/logrus"
	"learn_go/pkg/rest"
)

func main() {
	log.SetFormatter(&log.JSONFormatter{})
	log.WithFields(log.Fields{
		"host": "localhost",
	}).Info("starting application")
	rest.StartServer()
}
