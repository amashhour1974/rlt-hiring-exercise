output "public_ip" {
  value = "${aws_instance.ec2-web-single.public_ip}"
}