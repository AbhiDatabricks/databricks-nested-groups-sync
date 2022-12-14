/*
Terraform provider required providers block.

You can find the appropriate required_providers block using https://registry.terraform.io/providers/databricks/databricks/1.2.1 and
in the top right click use provider and it should give you the block. You will need different providers for different functionality.

You can specify versions or use latest by not providing a version. You should pin your providers to a fixed version in case a new version
is not backwards compatible.

For this exercise we will be using databricks and the random provider.
**/


terraform {
  required_providers {
    databricks = {
      source = "databricks/databricks"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.1"
    }
    azuread = {
      source = "hashicorp/azuread"
      version = "2.22.0"
    }
  }
}