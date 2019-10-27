resource "aws_instance" "webServer" {
    ami = "ami-08d489468314a58df"
    instance_type = "t2.micro"
    key_name = "${var.key_name}"
    #security_groups = ["${aws_security_group.public}"]
    user_data = "${file("userdata-webServer.sh")}"

    tags = {
        Name = "WebServer"
        Dept =  "IT"
        Created_by = "Mustafa"
    }
}

resource "aws_instance" "appServer" {
    ami = "ami-08d489468314a58df"
    instance_type = "t2.micro"
    #If you create a keypair and you assign to instance if you want to 
    key_name = "${var.key_name}"
    #security_groups = ["${aws_security_group.public}"]
    user_data = "${file("userdata-appServer.sh")}"

    tags = {
        Name = "appServer"
        Dept =  "IT"
        Created_by = "Mustafa"
    }
}

