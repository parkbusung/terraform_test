variable "prefix" {}

variable "vpc_cidr" {}

variable "private_subnets" {
    type = list(object({
        cidr                =   string
        availability_zone   =   string
    }))
}