variable "region" {
  default     = "eu-west-2"
  description = "VPC AWS Region"

}

variable "environment" {
  default     = "Website"
  description = "Prefix and tag name for all created resources"

}

variable "descriptor1" {
  default     = "Web"
  description = "Prefix and tag name for Public Subnets"

}

variable "descriptor2" {
  default     = "App"
  description = "Prefix and tag name for Private Subnets"

}

variable "publicserver1" {
  default     = "WebPublic1"
  description = "Prefix and tag name for Public Servers"

}

variable "publicserver2" {
  default     = "WebPublic2"
  description = "Prefix and tag name for Public Servers"

}


variable "privateserver1" {
  default     = "AppPrivate1"
  description = "Prefix and tag name for Private Servers"

}

variable "privateserver2" {
  default     = "AppPrivate2"
  description = "Prefix and tag name for Private Servers"

}

variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "VPC Cidr Block"

}

variable "public_subnet_1_cidr" {
  default     = "10.0.1.0/24"
  description = "Public Subnet 1 Cidr Block"

}

variable "az_1_name" {
  default     = "eu-west-2a"
  description = "Availability Zone 1 Name"

}

variable "public_subnet_2_cidr" {
  default     = "10.0.2.0/24"
  description = "Public Subnet 2 Cidr Block"

}

variable "az_2_name" {
  default     = "eu-west-2b"
  description = "Availability Zone 2 Name"

}

variable "private_subnet_1_cidr" {
  default     = "10.0.3.0/24"
  description = "Private Subnet 1 Cidr Block"

}

variable "private_subnet_2_cidr" {
  default     = "10.0.4.0/24"
  description = "Private Subnet 2 Cidr Block"

}

variable "linux_instance_type" {
  default     = "t2.micro"
  description = "EC2 instance type for Amazon Linux 2 Server"

}

variable "db_name" {
  default     = "website"
  description = "RDS database name"

}

variable "engine" {
  default     = "mysql"
  description = "RDS engine version"

}


variable "instance_class" {
  default     = "db.t3.micro"
  description = "RDS Instance class"

}

variable "engine_version" {
  default     = "5.7.42"
  description = "RDS engine version"

}

variable "username" {
  default     = "admin"
  description = "RDS engine username"

}

variable "password" {
  default     = "administrator"
  description = "RDS engine password"

}

variable "parameter_group_name" {
  default     = "default.mysql5.7"
  description = "Parameter group name"

}

variable "db_subnet_group_name" {
  default     = "dbsng"
  description = "Db Subnet group name"

}

