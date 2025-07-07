# Define the required providers for this configuration
terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5" # Use a compatible version of the local provider
    }
  }
}

# Define a resource of type 'local_file'
resource "local_file" "hello_world_file" {
  # The path where the file will be created relative to the current directory
  filename = "hello_world.txt"

  # The content that will be written into the file
  content = "Hello again, Terraform! The content has been updated on July 6, 2025."
}

# Define an output to easily see the path of the created file after apply
output "file_path" {
  description = "The path to the created hello_world.txt file."
  value       = local_file.hello_world_file.filename
}