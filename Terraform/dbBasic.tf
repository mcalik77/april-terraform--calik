resource "aws_db_instance" "appDB" {
  
  vpc_security_group_ids   = ["${aws_security_group.privateDB.id}"]
  allocated_storage        = 20
  storage_type             = "gp2"
  engine                   = "postgres"
  engine_version           = "9.5.4"
  instance_class           = "db.t2.micro"
  identifier               = "appdb"
  name                     = "mydb"
  username                 = "dbUser"
  password                 = "password"
  port                     = 5432
  #region                   = "us-west-2"

}
