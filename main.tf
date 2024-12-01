// Tags
locals {
  tags = {
    class    = var.tag_class
    student  = var.tag_student
    semester = var.tag_semester
  }
}

// Existing Resources

/// Subscription ID

# data "azurerm_subscription" "current" {
# }

// Random Suffix Generator

resource "random_integer" "deployment_id_suffix" {
  min = 100
  max = 999
}


