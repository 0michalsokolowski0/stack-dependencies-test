data "terraform_remote_state" "stack-a-state" {
  backend = "remote"

  config = {
    hostname     = "spacelift.io"
    organization = "saturnhead"

    workspaces = {
      name = "stack-a"
    }
  }
}

