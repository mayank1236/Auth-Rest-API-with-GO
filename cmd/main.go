package main

import (
	"log"

	"github.com/mayank1236/Auth-Rest-API-with-GO/cmd/api"
)

func main () {
	server := api.NewAPIServer(":8080", nil)
	if err := server.Run(); err != nil {
		log.Fatal(err)
	}
}