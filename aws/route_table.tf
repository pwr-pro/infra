resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway_skytech.id
  }
}

resource "aws_route_table" "private" {
    vpc_id = aws_vpc.main_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
    }
}