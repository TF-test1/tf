

resource "google_sql_user" "user" {
  name     = "camundasecure"
  instance = google_sql_database_instance.camunda-db.name
  password = "futurice"
}

resource "google_sql_database" "database" {
  name     = "camundasecure"
  instance = google_sql_database_instance.camunda-db.name
}
