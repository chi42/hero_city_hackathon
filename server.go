package main

import (
    "os"
    "fmt"
    "net/http"
    "io/ioutil"
    "database/sql"
)

func page_h(w http.ResponseWriter, r *http.Request, page string) {
    txt, err := ioutil.ReadFile(page)

    if err != nil {
        fmt.Printf("File not found: %s", err)
        http.Error(w, err.Error(), http.StatusNotFound)
    } else {
        fmt.Fprintf(w,string(txt))
    }
    return
}

func index_h(w http.ResponseWriter, r *http.Request) {
    page_h(w, r, "index.html")
}

func unhandled_h(w http.ResponseWriter, r *http.Request) {
    http.Error(w, "not found", http.StatusNotFound)
}

func main() {
    var db *sql.DB

    db = db_open()
    if db == nil {
        os.Exit(1)
    }

    http.HandleFunc("/", index_h)

    // doesn't work
    //http.HandleFunc("*", unhandled_h)
    http.ListenAndServe(":8080", nil)
}
