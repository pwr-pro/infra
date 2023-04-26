resource "aws_internet_gateway" "internet_gateway_skytech" {
  vpc_id = aws_vpc.main_vpc.id

  tags = {
    Name = "My Internet Gateway skytech"
  }
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public.id
}