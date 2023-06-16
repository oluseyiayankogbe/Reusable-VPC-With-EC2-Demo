#1. Create Security Group (With Outbound Rule Attached)

resource "aws_security_group" "sg" {
  name   = "${var.environment}-sg"
  vpc_id = aws_vpc.vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.environment}-sg"
  }
}

#2a. Create Security Group Inbound Rule 1 (http)
resource "aws_security_group_rule" "sgr-1" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  security_group_id = aws_security_group.sg.id
  cidr_blocks       = ["0.0.0.0/0"]

}

#2b. Create Security Group Inbound Rule 2 (ssh)
resource "aws_security_group_rule" "sgr-2" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.sg.id
  cidr_blocks       = ["0.0.0.0/0"]

}

#2c. Create Security Group Inbound Rule 3 (rds database)
resource "aws_security_group_rule" "sgr-3" {
  type              = "ingress"
  from_port         = 3306
  to_port           = 3306
  protocol          = "tcp"
  security_group_id = aws_security_group.sg.id
  cidr_blocks       = ["0.0.0.0/0"]

}
