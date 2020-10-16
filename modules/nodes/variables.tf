variable "region" {
  type        = string
  description = "AWS Region"
}
variable "instance_type" {
  type        = list(string)
  description = "Instance type to launch"
}
variable "ec2_ssh_key" {
  type = string
  default = "null"
}
variable "subnet_ids"{
  type    = list(string)
  default =  ["subnet-0043fb7c5bddc8705","subnet-06e0e661239ffd6fb"]
}
variable "clustername"{
  default ="cluster"
}
variable "node_group_name"{
  default = ""
}
variable "desired_size"{
  default = " "
}
variable "max_size"{
  default = " "
}
variable "min_size"{
  default = " "
}
variable "profile"{
  
}
variable "cluster_id"{
  default =" "
}