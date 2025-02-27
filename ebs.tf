resource "aws_ebs_volume" "redis_volume" {
  availability_zone = "eu-west-2a" # Change to your desired AZ
  size              = 10           # Size of the EBS volume (in GiB)
  type              = "gp2"        # General Purpose SSD (can be adjusted based on your needs)
}

output "ebs_volume_id" {
  value = aws_ebs_volume.redis_volume.id
}