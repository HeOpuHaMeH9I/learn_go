package rest

import (
	"encoding/json"
	log "github.com/sirupsen/logrus"
	"net/http"
)

type status struct {
	Status string `json:"Status"`
}

func GetStatusHandler(w http.ResponseWriter, r *http.Request) {
	log.WithFields(log.Fields{
		"host": r.Host,
	}).Info("%q", r.URL)
	st := status{Status: "ok"}
	json.NewEncoder(w).Encode(st)
}

func StartServer() {
	port := ":5051"
	log.WithFields(log.Fields{
		"port": port,
		//"host": os.Hostname(),
	})
	http.HandleFunc("/status", GetStatusHandler)
	http.ListenAndServe(port, nil)
}
