package main

import (
	"flag"
	"fmt"
	"net/http"
)

var port *string

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "My port is currently %s\n", *port)
}

func main() {
	port = flag.String("port", "8765", "Port to serve")
	flag.Parse()
	http.HandleFunc("/", handler)
	http.ListenAndServe(":"+*port, nil)
}
