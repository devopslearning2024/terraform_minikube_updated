resource "aws_security_group" "minikube_sg" {
  name        = "minikube_sg"
  description = "Allow the SSH and HTTS inbound traffic"
  #vpc_id      = aws_vpc.myvpc.id

  ingress {
    description = "SSH Traffic"
    from_port   = 22
    to_port     = 22
    protocol    = local.protocol
    cidr_blocks = local.cidr_blocks
  }
  ingress {
    description = "httpd Traffic"
    from_port   = 8080
    to_port     = 8080
    protocol    = local.protocol
    cidr_blocks = local.cidr_blocks
  }
  ingress {
    description = "HTTP Traffic"
    from_port   = 80
    to_port     = 80
    protocol    = local.protocol
    cidr_blocks = local.cidr_blocks
  }

  ingress {
    description = "Ping"
    from_port   = -1
    to_port     = -1
    protocol    = "icmp"
    cidr_blocks = local.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = local.cidr_blocks
  }

  tags = {
    Name = "Minikube-sg"
  }
}
