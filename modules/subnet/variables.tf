variable "vpc_id" {
  description = "VPC ID for the subnet"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}

variable "map_public_ip_on_launch" {
  description = "Should the subnet have public IPs assigned?"
  type        = bool
}

variable "name" {
  description = "Name tag for the subnet"
  type        = string
}
