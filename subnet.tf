resource "aws_subnet" "appSubnet1" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.1.0/24"

  tags = {
      Name = "${var.Name}.public"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_subnet" "appSubnet2" {
  vpc_id     = "${aws_vpc.dev.id}"
  cidr_block = "10.0.2.0/24"

  tags = {
      Name = "${var.Name}.private"
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}