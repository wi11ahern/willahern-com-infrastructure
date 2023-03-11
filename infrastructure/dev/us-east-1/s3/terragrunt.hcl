terraform {
  source = "../../../modules//s3"
}

locals {
  env_vars = yamldecode(file("${find_in_parent_folders("environment.yaml")}"))
}

inputs = {
  env = local.env_vars["env"]
}

include "root" {
  path = find_in_parent_folders()
}