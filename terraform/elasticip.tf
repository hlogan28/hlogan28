## Create elastic IP

resource "aws_eip" "sandbox-eip" {
  vpc = true

  tags = {
    Name = "sandbox-eip"
  }
}