provider "aws" {
  region = "us-west-2"
}

module "cidr-house-rules-role" {
  source = "../"
}

output "account_alias" {
  value = "${module.cidr-house-rules-role.account_alias}"
}

output "account_id" {
  value = "${module.cidr-house-rules-role.account_id}"
}

output "cidr-house-rules-role" {
  value = "${module.cidr-house-rules-role.cidr-house-rules-role}"
}
