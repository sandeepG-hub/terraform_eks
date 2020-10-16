variable "region" {
  description = "AWS Region"
  default     =""
}
variable "subnet_ids" {
  description = "A list of subnet IDs to launch the cluster in"
  type        = list(string)
}
variable "cluster"{
    default ="cluster"
}
variable "profile"{
  
}
variable "iam_role_name"{
  default = "eks-cluster-cluster"
}
variable "Environment"{
  default = "Production"
}
variable "application"{
  default = "Service"
}