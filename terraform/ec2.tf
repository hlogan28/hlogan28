resource "aws_instance" "Server1" {
  ami                    = "ami-096fda3c22c1c990a"
  instance_type          = "t2.large"
  subnet_id              = aws_subnet.sandbox-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = "ec2key"

  tags = {
    Name = "Server1"
  }
}

resource "aws_instance" "Server2" {
  ami                    = "ami-096fda3c22c1c990a"
  instance_type          = "t2.large"
  subnet_id              = aws_subnet.sandbox-subnet-public.id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  key_name               = "ec2key"

  tags = {
    Name = "Server2"
  }
}

resource "aws_instance" "Private-Serv1" {
  ami                    = "ami-096fda3c22c1c990a"
  instance_type          = "t2.large"
  subnet_id              = aws_subnet.sandbox-subnet-private.id
  vpc_security_group_ids = [aws_security_group.ssh-allow-priv.id]
  key_name               = "ec2key"

  tags = {
    Name = "Private-Serv1"
  }
}

resource "aws_instance" "Private-Serv2" {
  ami                    = "ami-096fda3c22c1c990a"
  instance_type          = "t2.large"
  subnet_id              = aws_subnet.sandbox-subnet-private.id
  vpc_security_group_ids = [aws_security_group.ssh-allow-priv.id]
  key_name               = "ec2key"

  tags = {
    Name = "Private-Serv2"
  }
}
