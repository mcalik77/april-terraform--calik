resource "aws_subnet" "appSubnet1" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.17.34.1/28"

  tags = {
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_subnet" "appSubnet2" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.17.34.2/28"

  tags = {
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}