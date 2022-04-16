terraform {
  backend "s3" {
    bucket = "myterraforrmfirstlab"
    key    = "prod/teeraform.tfstate"
    region = "us-east-1"
  }
}
