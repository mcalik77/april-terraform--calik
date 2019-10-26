resource "aws_vpc" "environmentVPC" {
  cidr_block = "10.17.34.0/24"


  tags = {
      Name = "${var.Name}"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}
