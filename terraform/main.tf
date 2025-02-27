# # VPC

provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region = var.region
}

data "aws_availability_zones" "available" {}

locals {
  cluster_name = var.clusterName
}


# module "vpc" {
#   source = "./vpc"

# }
# resource "aws_vpc" "main" {
#   cidr_block = "172.20.0.0/16"
#   enable_dns_support = true
#   enable_dns_hostnames = true
#   tags = {
#     Name = "main-vpc"
#   }
# }

# # Subnets
# resource "aws_subnet" "subnet_a" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "172.20.0.0/18"
#   availability_zone = "eu-west-2a"
#   tags = {
#     Name = "subnet-a"
#   }
# }

# resource "aws_subnet" "subnet_b" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "172.20.64.0/18"
#   availability_zone = "eu-west-2b"
#   tags = {
#     Name = "subnet-b"
#   }
# }

# resource "aws_subnet" "subnet_c" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = "172.20.128.0/18"
#   availability_zone = "eu-west-2c"
#   tags = {
#     Name = "subnet-c"
#   }
# }

# # Security Group
# resource "aws_security_group" "k8s_sg" {
#   vpc_id = aws_vpc.main.id

#   ingress {
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "k8s-sg"
#   }
# }

# # # Load Balancer
# # resource "aws_lb" "k8s_alb" {
# #   name               = "k8s-alb"
# #   internal           = false
# #   load_balancer_type = "application"
# #   security_groups    = [aws_security_group.k8s_sg.id]
# #   subnets            = [aws_subnet.subnet_a.id, aws_subnet.subnet_b.id, aws_subnet.subnet_c.id]
# #   enable_deletion_protection = false

# #   tags = {
# #     Name = "k8s-alb"
# #   }
# # }

# # # S3 Bucket for Kops State
# # resource "aws_s3_bucket" "kops_state" {
# #   bucket = "stockprice-kops-cluster-state"
# #   acl    = "private"

# #   versioning {
# #     enabled = true
# #   }

# #   tags = {
# #     Name = "kops-state"
# #   }
# # }

