resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "public_subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = "10.0.20.0/24"
  availability_zone = "us-east-1b"


  tags = {
    Name = "private_subnet"
  }
}