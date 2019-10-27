resource "aws_subnet" "appSubnet1" {
  vpc_id     = "${aws_vpc.environmentVPC.id}"
  cidr_block = "10.17.34.0/25"
  #availability_zone = "us-west-2a"

  tags = {
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}

resource "aws_subnet" "appSubnet2" {
  vpc_id     = "${aws_vpc.environmentVPC.id}"
  cidr_block = "10.17.34.128/25"
  #availability_zone = "us-west-2b"
  tags = {
      Env = "${var.Env}"
      Created_by = "${var.Created_by}"
      Dept = "${var.Dept}"
  }
}