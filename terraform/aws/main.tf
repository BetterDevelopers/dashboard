# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
  region  = "${var.region}"
}

resource "aws_db_instance" "bd_dashboard" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "${var.dbname}"
  username             = "${var.username}"
  password             = "${var.pass}"
  parameter_group_name = "default.mysql5.7"

  skip_final_snapshot  = true

  tags = {
    Name = "bd_dashboard"
  }
} 