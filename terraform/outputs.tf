output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_1" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2" {
  value = aws_subnet.public_subnet_2.id
}

output "private_subnet_1" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2" {
  value = aws_subnet.private_subnet_2.id
}

output "internet_gateway" {
  value = aws_internet_gateway.igw.id
}

output "nat_gateway" {
  value = aws_nat_gateway.nat.id
}

output "bastion_public_ip" {
  value = aws_instance.bastion.public_ip
}

output "web_private_ip" {
  value = aws_instance.web.private_ip
}

output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "database_endpoint" {
  value = aws_db_instance.mysql.endpoint
}