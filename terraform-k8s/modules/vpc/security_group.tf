# Security Group for k8s Worker
resource "aws_security_group" "k8s-worker" {
  name                     =   "${var.prefix}-K8S Worker-SG"
  vpc_id                   =   "vpc-0b3168f71e0d09bea"

  # Outbound ALL
  egress {
    from_port              =   0
    to_port                =   0
    protocol               =   "-1"
    cidr_blocks            =   ["0.0.0.0/0"]
  }

  tags = {
    Name                   =   "${var.prefix}-K8S Worker-SG"
    Managed_by             =   "terraform"
  }
}

resource "aws_security_group_rule" "SSH_access_ingress" {
  description              =   "Allow SSH"
  cidr_blocks              =   ["0.0.0.0/0"]
  from_port                =   22
  to_port                  =   22
  protocol                 =   "tcp"
  security_group_id        =   aws_security_group.k8s-worker.id
  type                     =   "ingress"
}

resource "aws_security_group_rule" "k8s_access_ingress" {
  description              =   "Allow k8s master"
  source_security_group_id =   "sg-0201254ea03615df8"
  from_port                =   0
  to_port                  =   0
  protocol                 =   "-1"
  security_group_id        =   aws_security_group.k8s-worker.id
  type                     =   "ingress"
}