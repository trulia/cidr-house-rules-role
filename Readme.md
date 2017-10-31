Cidr-house-rules-role Terraform module
===========

Module to create the role needed for IAM role access for cidr-house-rules application. This application is read-only and gathers ec2/vpc utilization information

Module Input Variables
----------------------

- `cidr_house_rules_account_number` The account number where cidr-house-rules will run from, required input
- `serverless_stage` The Serverless stage you want to grant access to. Defined with serverless deploy --stage <here> command, defaults to 'dev'
- `serverless_region` The region you are running the serverless cidr-house-rules app from, defaults to 'us-west-2'

Usage
-----

```
module "cidr-house-rules-role" {
  cidr_house_rules_account_number = "123456770"
  serverless_stage                = "prod"
  serverless_region               = "us-west-2"
  source                          = "git::ssh://git@github.com/silvermullet/cidr-house-rules-role.git?ref=v0.0.1"
}
```

Outputs
=======

- account_alias
- account_id
- cidr-house-rules-role