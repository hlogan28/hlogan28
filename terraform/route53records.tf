## Create Route 53 Records

resource "aws_route53_record" "server1" {
    zone_id = aws_route53_zone.primary.zone_id
    name    = "server1.scodevenv.com"
    type    = "A"
    ttl     = "300"
    records = [aws_eip.sandbox-eip.public_ip]
}