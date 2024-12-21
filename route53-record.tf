####################################################
# Create an Alias A record in the hosted zone for the ALB
####################################################

resource "aws_route53_record" "solomon_portfolio" {
  zone_id = "Z06639414QTF8GXLZVRH" # Replace with your actual hosted zone ID
  name    = "solomon-portfolio"   # Domain/subdomain name
  type    = "A"

  alias {
    name                   = aws_lb.sh_lb.dns_name
    zone_id                = aws_lb.sh_lb.zone_id
    evaluate_target_health = true
  }
}
