// main tf file for Cidr-house-rules-role

data "aws_iam_policy_document" "cidr_house_assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::${var.cidr_house_rules_account_number}:role/cidr-house-rules-${var.serverless_stage}-${var.serverless_region}-lambdaRole",
      ]
    }
  }
}

data "aws_iam_policy_document" "cidr_house_policy" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:Describe*"]
    resources = ["*"]
  }
}

resource "aws_iam_role" "cidr_house_role" {
  name = "role_cidr_house"
  path = "/"

  assume_role_policy = "${data.aws_iam_policy_document.cidr_house_assume_role.json}"
}

resource "aws_iam_role_policy" "role_cidr_house_policy" {
  name = "cidr_house_policy"
  role = "${aws_iam_role.cidr_house_role.id}"

  policy = "${data.aws_iam_policy_document.cidr_house_policy.json}"
}
