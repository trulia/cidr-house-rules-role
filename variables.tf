variable "cidr_house_rules_account_number" {
  description = "The account number where cidr-house-rules will run from"
  default     = ""
}

variable "serverless_stage" {
  description = "The Serverless stage you want to grant access to. Defined with serverless deploy --stage <here> command"
  default     = "dev"
}

variable "serverless_region" {
  description = "The region you are running the serverless cidr-house-rules app from"
  default     = "us-west-2"
}
