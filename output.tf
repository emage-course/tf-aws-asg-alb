
output "web_connection" {
  value = "http://${aws_lb.sh_lb.arn}"
}


