variable "APP_DB_URL" {
  description = "The database URL for the application"
  type        = string
  default = "postgres://user:password@localhost:5432/mydb"
}

resource "null_resource" "app" {
  provisioner "local-exec" {
    command = "echo ${var.APP_DB_URL} > app_db_url.txt"
  }
}

data "terraform_remote_state" "stack_a" {
  backend = "remote"
  config = {
    organization = "spacelift"
    workspaces = {
      name = "stack-a"
    }
  }
}

