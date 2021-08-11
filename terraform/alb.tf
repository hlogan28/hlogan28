## Create ALB 
resource "aws_lb" "sandbox-lb" {
  name                       = "sandbox-lb-tf"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [aws_security_group.ssh-allowed.id]
  subnets                    = [aws_subnet.sandbox-subnet-public.id, aws_subnet.sandbox-subnet-private.id]
  enable_deletion_protection = false

  tags = {
    Environment = "production"
  }
}