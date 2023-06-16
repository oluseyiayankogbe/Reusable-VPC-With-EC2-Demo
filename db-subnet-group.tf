#0. Create DB Subnet Group

resource "aws_db_subnet_group" "dbsng" {
  name       = "dbsng"
  subnet_ids = [aws_subnet.private-subnet-1.id, aws_subnet.private-subnet-2.id]

  tags = {
    Name = "${var.environment}-dbsng"
  }
}


