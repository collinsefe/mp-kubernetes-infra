terraform {
  backend "s3" {
    bucket = "mp-kubernetes-tfstate"
    key    = "infra/infra.tfstate"
    region = "eu-west-2"
  }
}


