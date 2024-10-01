terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.63"
    }
  }

  backend "s3" {
    bucket = "compound-terraform-infra"
    key    = "state/terraform.tfstate"
    region = "us-west-1"
  }

  required_version = ">= 1.6.6"
}

provider "aws" {
  profile = "${var.profile}"
  region  = "${var.region}"
}
