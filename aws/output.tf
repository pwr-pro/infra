output "elastic_ip_address" {
  value = aws_eip.lb.public_ip
}

output "bastion_priv_ip" {
  value = aws_instance.skytech-bastion.private_ip
}
