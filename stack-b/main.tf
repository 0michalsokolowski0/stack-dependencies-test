data "terraform_remote_state" "stack_a" {
  backend = "remote"
  config = {
    organization = "spacelift"
    workspaces = {
      name = "stack-a"
    }
  }
}

