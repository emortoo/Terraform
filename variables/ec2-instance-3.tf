
resource "aws_instance" "App-Server" {
  ami              = var.ami
  instance_type    = var.instance_type
  user_data        = file("${path.module}/app-install.sh")
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = {
    "Name" = "App-Server"
  }

}
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  user_data = file("${path.module}/app-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]  
  tags = {
    "Name" = "EC2 Instance 3"
  }
}
