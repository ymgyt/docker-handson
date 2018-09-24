package main

import (
	"fmt"
	"log"
	"net/http"
)

func helloWorld(w http.ResponseWriter, r *http.Request) {
	log.Println("received request")
	fmt.Fprintf(w, "Hello Docker!!")
}

func main() {

	server := &http.Server{Addr: ":8080"}
	server.Handler = http.HandlerFunc(helloWorld)

	log.Println("start server")
	if err := server.ListenAndServe(); err != nil {
		log.Println(err)
	}
}
