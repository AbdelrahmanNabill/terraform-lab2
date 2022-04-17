terraform {
  backend "s3" {
    bucket = "myterraforrmfirstlab"
    key    = "teeraform.tfstate"
    region = "us-east-1"
  }
}
