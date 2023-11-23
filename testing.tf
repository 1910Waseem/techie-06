terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "~> 2.3.0"
    }
  }
}
resource "local_file" "pet" {
filename = var.filename
content = var.content
}
resource "random_pet" "mypet" {
prefix = "MR"
separator = "."
length = "1"
}