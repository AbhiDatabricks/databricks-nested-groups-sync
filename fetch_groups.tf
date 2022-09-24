data "azuread_group" "this" {
  for_each = local.all_groups
  display_name = each.value
}

locals {
  all_groups = toset(keys(var.groups))
  admin_groups = toset([for k,v in var.groups: k if v.admin])
}