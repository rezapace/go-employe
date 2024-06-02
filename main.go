package main

import (
	"employe/config"
	"employe/router"
	"log"
	"net/http"

	"github.com/golang-migrate/migrate/v4"
	_ "github.com/golang-migrate/migrate/v4/database/mysql"
	_ "github.com/golang-migrate/migrate/v4/source/file"
)

func main() {
	config.Connect()

	// Run migrations
	m, err := migrate.New(
		"file://migrations",
		"mysql://root:root@tcp(127.0.0.1:3306)/goblog")
	if err != nil {
		log.Fatal(err)
	}
	if err := m.Up(); err != nil && err != migrate.ErrNoChange {
		log.Fatal(err)
	}

	r := router.Router()
	log.Fatal(http.ListenAndServe(":8080", r))
}
