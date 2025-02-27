resource "aws_ecr_repository" "foo" {
  name                 = "mp-k8s-cluster"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}