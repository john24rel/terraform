resource "aws_route53_record" "org"{
   zone_id = "Z072691037T3UF5W6Z7KL"
  name    = "org.johnoshikoya.com"
  type    = "A"
  ttl     = "5"
  records = ["${aws_instance.ubuntu.public_ip}"]

}