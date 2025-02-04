module "dynamodb_table" {
  source  = "terraform-aws-modules/dynamodb-table/aws"
  version = "2.0.0"

  name          = "joseph-table"
  hash_key      = "id"
  range_key     = "title"
  table_class   = "STANDARD"

  attributes = [
    {
      name = "id"
      type = "N"
    },
    {
      name = "title"
      type = "S"
    },
    {
      name = "age"    #all attributes need to be indexed
      type = "N"
    }
  ]

   global_secondary_indexes = [
    {
      name            = "AgeIndex"
      hash_key        = "age"
      projection_type = "ALL"
    }
  ]
}

