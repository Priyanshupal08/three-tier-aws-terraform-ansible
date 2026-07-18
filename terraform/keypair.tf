resource "tls_private_key" "project_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  filename        = "${path.module}/project-key.pem"
  content         = tls_private_key.project_key.private_key_pem
  file_permission = "0400"
}

resource "aws_key_pair" "project_key" {
  key_name   = "three-tier-key"
  public_key = tls_private_key.project_key.public_key_openssh
}