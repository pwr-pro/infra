resource "aws_instance" "skytech-bastion" {
  ami                    = "ami-0aa2b7722dc1b5612"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key_skytech.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  subnet_id              = aws_subnet.public_subnet.id


  tags = {
    Name = "ubuntu-instance"
  }
}

resource "aws_instance" "skytech-staging" {
  ami                    = "ami-0aa2b7722dc1b5612"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.key_skytech.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  subnet_id              = aws_subnet.private_subnet.id

  tags = {
    Name = "ubuntu-instance-staging"
  }
}