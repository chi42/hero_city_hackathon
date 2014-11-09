package hero_city_hackathon

import (
    "fmt"
    "database/sql"
    _ "github.com/lib/pq"
)

func db_open() {
    db, err := sql.Open("postgres", "user=postgres dbname=hero_hack password=password")
    if err != nil {
        fmt.Printf("Error: %s\n", err);
    }

    rows, err := db.Query("SELECT name FROM users")
    if err != nil {
        fmt.Printf("Error2: %s\n", err);
    } else {
        for rows.Next() {
            var name string
            err = rows.Scan(&name)
            fmt.Printf("Name:%s, errr:%s\n", name, err)
        }
    }
}

