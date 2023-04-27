
resource "aws_instance" "App-Server" {
  ami              = var.ami
  instance_type    = var.instance_type
  user_data        = file("${path.module}/app-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    "Name" = "App-Server"
  }

}
