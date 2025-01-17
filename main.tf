provider "aws" {
  region     = "eu-central-1"
}

resource "aws_vpc" "an_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.an_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "eu-central-1a"
}

resource "aws_internet_gateway" "an_igw" {
  vpc_id = aws_vpc.an_vpc.id
}

resource "aws_route_table" "an_route_table" {
  vpc_id = aws_vpc.an_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.an_igw.id
  }
}

resource "aws_route_table_association" "subnet_1_association" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.an_route_table.id
}

resource "aws_security_group" "an_sg" {
  vpc_id = aws_vpc.an_vpc.id
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "an_instance" {
  ami           = "ami-0a628e1e89aaedf80"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_1.id

  associate_public_ip_address = true
  key_name                    = "ifomenko"

  security_groups = [aws_security_group.an_sg.id]

  tags = {
    Name = "ans-1"
    Role = "Base"
  }
}

resource "aws_instance" "an_instance2" {
  ami           = "ami-0a628e1e89aaedf80"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_1.id

  associate_public_ip_address = true
  key_name                    = "ifomenko"

  security_groups = [aws_security_group.an_sg.id]

  tags = {
    Name = "ans-2"
    Role = "Web"
  }
}

resource "aws_instance" "an_instance3" {
  ami           = "ami-0a628e1e89aaedf80"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.subnet_1.id

  associate_public_ip_address = true
  key_name                    = "ifomenko"

  security_groups = [aws_security_group.an_sg.id]

  tags = {
    Name = "ans-3"
    Role = "Vault"
  }
}
