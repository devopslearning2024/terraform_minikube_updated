locals {
  ami                         = "ami-0c7217cdde317cfec"
  instance_type               = "t2.medium"
  key_name                    = "common-key"
  associate_public_ip_address = true
  cidr_blocks                 = ["0.0.0.0/0"]
  protocol                    = "tcp"
}

# variable "avzone-public" {
#   default = "us-east-1a"
# }

# variable "avzone-private" {
#   default = "us-east-1b"
# }
