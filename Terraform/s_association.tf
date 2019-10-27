resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.appSubnet1.id}"
  route_table_id = "${aws_route_table.r.id}"
}
resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.appSubnet2.id}"
  route_table_id = "${aws_route_table.r.id}"
}