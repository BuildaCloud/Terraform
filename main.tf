terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

variable "file_content" {
  description = "Content written inside the file"
  type        = string
  default     = "Hello from a Terraform variable 👋"
}

resource "local_file" "file_one" {
  filename = "file1.txt"
  content  = var.file_content
}

resource "local_file" "file_two" {
  filename = "file2.txt"
  content  = "This is file number TWO 🥈"
}