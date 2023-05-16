terraform {
  backend "s3" {
    bucket = "bucky96512"
    key    = "path/Group-A-assignment-Batch8/GroupA.tfstate"
    region = "us-east-1"
  }
}
