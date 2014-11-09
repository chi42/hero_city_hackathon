package main

import (
    "fmt"
    "net/http"
    "io/ioutil"
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

func main() {
    http.HandleFunc("/", index_h)
    http.ListenAndServe(":8080", nil)
}

