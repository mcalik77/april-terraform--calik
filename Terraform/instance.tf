resource "aws_instance" "webServer" {
    ami = "ami-8bb9e2f2"
    instance_type = "t2.micro"
    #key_name = "${aws_key_pair.terraform_april.key_name}"
    security_groups = ["${aws_security_group.public.name}"]
    user_data = "${file("userdata-webServer.sh")}"

    tags = {
        Name = "WebServer"
        Dept =  "IT"
        Created_by = "Mustafa"
    }
}

resource "aws_instance" "appServer" {
    ami = "ami-8bb9e2f2"
    instance_type = "t2.micro"
    #If you create a keypair and you assign to instance if you want to 
    #key_name = "${aws_key_pair.terraform_april.key_name}"
    security_groups = ["${aws_security_group.public.name}"]
    user_data = "${file("userdata-appServer.sh")}"

    tags = {
        Name = "appServer"
        Dept =  "IT"
        Created_by = "Mustafa"
    }
}

