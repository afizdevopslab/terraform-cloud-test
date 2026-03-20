terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.1.1"
    }
    }
    }

locals {
  twotowers = ["sam", "aragorn", "merri","saruman","eomer","rohan"]

}

resource "null_resource" "twotowers" {
  for_each = toset(local.twotowers)
  triggers = {
    name = each.value
  }
}

output "twotowers" {
  value = null_resource.twotowers
}
