#START OF EC2-PRIVATE-1 PROVISION CODE

#1. Define The Data To Be Associated With The EC2 Instance
data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

#2. Define The Local Varying Values using the "locals" descriptor
locals {
  aws_instance = {
    "private-1" = { subnet_id = "${aws_subnet.private-subnet-1.id}", tags = { Name = "${var.privateserver1}-ec2" } }
    "private-2" = { subnet_id = "${aws_subnet.private-subnet-2.id}", tags = { Name = "${var.privateserver2}-ec2" } }
    "public-1"  = { subnet_id = "${aws_subnet.public-subnet-1.id}", tags = { Name = "${var.publicserver1}-ec2" } }
    "public-2"  = { subnet_id = "${aws_subnet.public-subnet-2.id}", tags = { Name = "${var.publicserver2}-ec2" } }
  }
}

#3. Create The EC2 Instance
resource "aws_instance" "ec2" {
  for_each                    = local.aws_instance
  subnet_id                   = each.value.subnet_id
  tags                        = each.value.tags
  ami                         = data.aws_ami.amazon-linux-2.id
  instance_type               = var.linux_instance_type
  key_name                    = "${var.environment}-key"
  vpc_security_group_ids      = ["${aws_security_group.sg.id}"]
  iam_instance_profile        = "${var.environment}-profile"
  associate_public_ip_address = true

}


#END OF EC2 PROVISION CODE
