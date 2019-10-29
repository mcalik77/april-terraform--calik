resource "aws_vpc" "environmentVPC" {
  cidr_block = "${var.cidr_block}"


  tags = {
    Name       = "environmentVPC"
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"
  }
}
