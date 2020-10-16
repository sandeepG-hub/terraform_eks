variable "vpc_id" {
  type        = string
  default     = "vpc-0542fe1f797294397"
  description = "VPC ID for the EKS cluster"
}
variable "region" {
  type        = string
  description = "AWS Region"
  default     ="us-east-2"
}
variable "cidr" {
  description = "The CIDR block for the VPC."
  default     = "10.0.0.0/16"
}
variable "enable_dns_hostnames" {
  description = "True or False to enable/diasbale the DNS hostnames in VPC."
  default     = true
}

variable "enable_dns_support" {
  description = "True or False to enable/disable the DNS support in VPC."
  default     = true
}


variable "nat_gateways_count" {
  description = "NAT Gateway to be created."
  default     = 1
}
variable "azs" {
  description = "Comma separated lists of AZs in which to distribute subnets"
#  default     = "us-west-2a,us-west-2b,us-west-2c"
}
variable "public_subnets" {
  description = "List of public subnets CIDR blocks"
  type        = list(string)
  default     = ["subnet-0043fb7c5bddc8705","subnet-06e0e661239ffd6fb"]
}
