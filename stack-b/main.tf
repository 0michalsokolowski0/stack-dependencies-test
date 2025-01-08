data "spacelift_stack" "stack-a-data" {
  stack_id = "dependencies-stack-a"
}

output "stack-a-id" {
  value = data.spacelift_stack.stack-a-data.id
}

output "stack-a-administrative" {
  value = data.spacelift_stack.stack-a-data.administrative
}

data "terraform_remote_state" "example_stack_state" {
  backend = "remote"

  config = {
    hostname     = "spacelift.dev"
    organization = "0michalsokolowski0"
    workspaces = {
      name = "dependencies-stack-a"
    }
  }
}

output "example_output" {
  value = data.terraform_remote_state.example_stack_state.outputs.DB_CONNECTION_STRING
}