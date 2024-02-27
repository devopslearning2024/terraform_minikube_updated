data "template_file" "user_data" {
  template = file("deployment.sh")
}

resource "aws_instance" "minikubr-instance" {
  ami           = local.ami
  instance_type = local.instance_type
  key_name      = local.key_name
  user_data     = data.template_file.user_data.rendered

  tags = {
    Name = "Minikube"
  }
}
