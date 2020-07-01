# Security Group
resource "aws_security_group" "this" {
  name        = var.aws_security_group_name
  description = "Cluster communication with worker nodes"
  vpc_id      = var.aws_vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Security Group Rule
resource "aws_security_group_rule" "this" {
  cidr_blocks       = ["${var.accessing_computer_ip}/32"] # Todo: Add /32
  description       = "Allow workstation to communicate with the cluster API Server"
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.this.id
  to_port           = 443
  type              = "ingress"
}