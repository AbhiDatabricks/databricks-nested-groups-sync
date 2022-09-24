data "azuread_groups" "all" {
  return_all = true
}
# data "azuread_group" "this" {
#   for_each = local.all_groups
#   display_name = each.value
# }

# locals {
#   all_groups = toset(keys(var.groups))
#   admin_groups = toset([for k,v in var.groups: k if v.admin])
# }

# variable "groups" {
#   description = "Map of AAD group names into object describing workspace & Databricks SQL access permissions"
#   type = map(object({
#     workspace_access = bool
#     databricks_sql_access = bool
#     allow_cluster_create = bool
#     allow_instance_pool_create = bool
#     admin = bool  # if this group for Databricks admins
#   }))
# }