resource "aws_instance" "webServer" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  subnet_id     = "${aws_subnet.appSubnet1.id}"
  user_data     = "${file("userdata-webServer.sh")}"

  tags = {
    #Name = "${var.Name}"
    Env        = "${var.Env}"
    Created_by = "${var.Created_by}"
    Dept       = "${var.Dept}"
  }
}

resource "aws_instance" "appServer" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_name}"
  subnet_id     = "${aws_subnet.appSubnet2.id}"
  user_data     = "${file("userdata-appServer.sh")}"

  tags = {
    Name       = "appServer"
    Dept       = "IT"
    Created_by = "Mustafa"
  }
}
