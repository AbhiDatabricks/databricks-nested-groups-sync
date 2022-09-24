variable "region" {
  type    = string
  default = "eastus"
}



locals {
  groupname = "mygroup${random_string.suffix.result}"
}


