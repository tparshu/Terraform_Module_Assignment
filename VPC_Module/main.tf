#Creaton of VPC resource

resource "aws_vpc" "myvpc" {
  cidr_block = "10.0.0.0/16"

  tags ={
  Name = "myvpc"
   }
}


# Define public_subnet

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true
  tags = {
    Name = "public_subnet"
  }
}

#Define private_subnet_1

resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = false
  tags = {
    Name = "private_subnet1"
  }
}

#Define private_subnet_2

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.myvpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "us-east-1c"
  map_public_ip_on_launch = false
  tags = {
    Name = "private_subnet2"
  }
}


  
# Define Internet Gateway

resource "aws_internet_gateway" "Igw" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "Igw"
  }
}

# Define Route Table

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.myvpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Igw.id
  }
  tags = {
    Name = "RT"
  }
}


# Define Route Table Asssociation for public_subnet

resource "aws_route_table_association" "RTA" {
subnet_id = aws_subnet.public.id
route_table_id = aws_route_table.RT.id
}

# Define Route Table Asssociation for private_subnet_1

resource "aws_route_table_association" "RTA1" {
subnet_id = aws_subnet.private1.id
route_table_id = aws_route_table.RT.id
}

# Define Route Table Asssociation for private_subnet_2

resource "aws_route_table_association" "RTA2" {
subnet_id = aws_subnet.private2.id
route_table_id = aws_route_table.RT.id
}

