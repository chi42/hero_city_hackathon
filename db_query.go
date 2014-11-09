package main 

import (
    "fmt"
    "time"
    "database/sql"
    _ "github.com/lib/pq"
)

func db_open() *sql.DB {
    db, err := sql.Open("postgres",
                    "user=postgres dbname=hero_hack password=password")
    if err != nil {
        fmt.Printf("could not connect to server: %s\n", err);
        return nil
    }

    return db 
}


func get_workouts_by_user_id(db *sql.DB, user_id int) {
    var query = " SELECT id, workout, date, improve, notes" +
                " FROM workouts" +
                " WHERE user_id = $1" 
        
    rows, err := db.Query(query, user_id)

    if err != nil {
        fmt.Printf("Failed to get workouts: %s\n", err);
        return
    }

    for rows.Next() {
        var id int 
        var workout string
        var date time.Time 
        var improve bool
        var notes string    

        rows.Scan(&id, &workout, &date, &improve, &notes)

        fmt.Printf("id: %d, workout: %s, date: %s, improve: %t, notes: %s\n",
                    id, workout, date, improve, notes)
    }
}

