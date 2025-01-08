data "spacelift_stack" "stack-a-data" {
  stack_id = "dependencies-stack-a"
}

output "stack-a-id" {
  value = data.spacelift_stack.stack-a-data.id
}

output "stack-a-administrative" {
  value = data.spacelift_stack.stack-a-data.administrative
}