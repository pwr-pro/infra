resource "aws_nat_gateway" "main_nat_gateway" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id = aws_subnet.private_subnet.id
}