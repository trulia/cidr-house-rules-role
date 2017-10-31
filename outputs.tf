data "aws_iam_account_alias" "current" {}

data "aws_caller_identity" "current" {}

output "account_alias" {
  value = "${data.aws_iam_account_alias.current.account_alias}"
}

output "cidr-house-rules-role" {
  value = "${aws_iam_role.cidr_house_role.arn}"
}

output "account_id" {
  value = "${data.aws_caller_identity.current.account_id}"
}
