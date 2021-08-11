## Create Route 53 Public Zone

resource "aws_route53_zone" "primary" {
  name = "scodevenv.com"
}


