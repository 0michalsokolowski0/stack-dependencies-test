resource "spacelift_stack" "stack-a" {
  name        = "Dependencies stack A"
  repository   = "stack-dependencies-test"
  project_root = "stack-a"
  branch       = "main"
  terraform_external_state_access = true
}

resource "spacelift_stack" "stack-b" {
  name        = "Dependencies stack B"
  description = "Your first stack managed by Terraform"
  repository   = "stack-dependencies-test"
  project_root = "stack-b"
  branch       = "main"
}
