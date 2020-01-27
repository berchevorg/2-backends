terraform {
  backend "s3" {
    bucket = "berchev-bucket-test"
    key    = "two-backends/terraform.tfsatate"
    region = "us-east-1"
  }
}

provider "aws" {
  region  = "us-east-1"
}

resource "random_pet" "name" {

  length    = "4"
  separator = "-"
}

output "out" {
  value = "${random_pet.name.id}"
}
