variable "cidr_house_rules_account_number" {
  description = "The account number where cidr-house-rules will run from"
  default     = ""
}

variable "serverless_dev_stage" {
  description = "The Serverless dev stage for a cidr-house-rules implemenation"
  default     = "dev"
}

variable "serverless_prod_stage" {
  description = "The Serverless prod stage for a cidr-house-rules implemenation"
  default     = "prod"
}

variable "serverless_region" {
  description = "The region you are running the serverless cidr-house-rules app from"
  default     = "us-west-2"
}
