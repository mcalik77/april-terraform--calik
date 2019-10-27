output "VPC" {
  value = "${aws_vpc.environmentVPC.id}"
}
output "Public Subnet" {
  value = "${aws_subnet.appSubnet1.id}"
}

output "Private_subnet" {
  value = "${aws_subnet.appSubnet2.id}"
}

output "pub_sec_group" {
  value = "${aws_security_group.public.id}"
}
output "private_sec_group" {
  value = "${aws_security_group.privateDB.id}"
}
output "key_name" {
  value = "${var.key_name}"
}