resource "aws_eip" "lb" {
  instance                  = aws_instance.skytech-bastion.id
  vpc                       = true
  associate_with_private_ip = aws_instance.skytech-bastion.private_ip
}

resource "aws_eip" "nat_eip" {
  vpc                       = true
}