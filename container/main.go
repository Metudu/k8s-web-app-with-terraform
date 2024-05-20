package main

import (
	"log"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		hostname, err := os.Hostname()
		if err != nil {
			log.Fatalf("Error: %s", err)
		}
		msg := "Hello from " + hostname

		w.Header().Set("Content-Type","text/plain")
		w.Write([]byte(msg))
	})

	if err := http.ListenAndServe(":80", nil); err != nil {
		log.Fatalf("Error: %s", err)
	}
}