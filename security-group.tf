resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = var.cdirs_acesso_remoto
  }

  tags = {
    Name = "acesso-ssh"
  }
}

resource "aws_security_group" "acesso-ssh-us-east-1" {
    provider = aws.us-east-1
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["189.111.58.148/32"]
  }

  tags = {
    Name = "acesso-ssh"
  }
}