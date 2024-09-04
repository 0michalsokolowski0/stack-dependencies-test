resource "random_string" "db_connection_string" {
  length  = 16
  special = true
}

resource "random_string" "some_random_string" {
  length  = 15
  special = false
}

output "DB_CONNECTION_STRING" {
  value = "postgres://${random_string.db_connection_string.result}@localhost:5432/mydb"
  sensitive   = true
}
