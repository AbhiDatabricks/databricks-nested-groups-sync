data "azuread_group" "this" {
  for_each = local.all_groups
  display_name = each.value
}