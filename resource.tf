/*
resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "joseph-private-database-subnet-group"   #name of the new subgroup
  subnet_ids = module.vpc.private_subnets

  tags = {
    Name = "tag-name-joseph-private-database-subnet-group"
  }
}
*/
