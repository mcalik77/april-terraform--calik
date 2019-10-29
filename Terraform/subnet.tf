resource "aws_subnet" "appSubnet1" {
  vpc_id     = "${aws_vpc.environmentVPC.id}"
  cidr_block = "${var.appSubnet1_cidr_block}"
  #availability_zone = "us-west-2a"

  tags = {
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"
  }
}

resource "aws_subnet" "appSubnet2" {
  vpc_id     = "${aws_vpc.environmentVPC.id}"
  cidr_block = "${var.appSubnet2_cidr_block}"
  #availability_zone = "us-west-2b"
  tags = {
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"
  }
}
